import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/json_converter.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

class PortfolioRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  PortfolioRepo(this._hiveApiClient, this._geckoApiClient);

  final BehaviorSubject<Either<Failure, CoinsEntity>> coinsSubject = BehaviorSubject();

  Future<void> _updateCoinsEntity(List<CoinEntity> coinsList) async {
    coinsList.sort((a, b) => b.holdingsValue.compareTo(a.holdingsValue));
    final CoinsEntity coinsEntity = CoinsEntity(
      list: coinsList,
      updateTime: DateTime.now(),
    );
    coinsSubject.add(right(coinsEntity));
    await _hiveApiClient.coins.updatePortfolioCoins(coinsEntity.convertToJson);
  }

  CoinsEntity getCoinsLocal() {
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    return coinsEntity;
  }

  Future<void> updateCoinsMarketData() async {
    try {
      final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
      final List<GeckoCoinDTO> geckoCoins = await _geckoApiClient.coins.getMarketCoinsByParams(
        paramsList: coinsEntity.list.map((e) => e.id.toDto).toList(),
      );
      final List<CoinEntity> updatedCoinsList = [];
      for (final coin in coinsEntity.list) {
        final CoinEntity emptyCoin = geckoCoins.createEmptyCoin(coin.id);
        updatedCoinsList.add(
          emptyCoin.copyWith(history: coin.history),
        );
      }
      await _updateCoinsEntity(updatedCoinsList);
    } catch (e) {
      coinsSubject.add(left(Failure.from(e)));
    }
  }

  Future<void> addCoin(CoinEntity coinEntity) async {
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    if (coinsEntity.list.where((e) => e.id == coinEntity.id).isNotEmpty) return;
    await _updateCoinsEntity([...coinsEntity.list, coinEntity]);
  }

  Future<void> deleteCoin(CoinId id) async {
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    final List<CoinEntity> newCoins = [...coinsEntity.list];
    newCoins.removeWhere((element) => element.id == id);
    await _updateCoinsEntity(newCoins);
  }

  Future<void> updateHistory(PaymentEntity paymentEntity) async {
    //adding and removing payments
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    final CoinEntity coinEntity = coinsEntity.list.firstWhere(
      (e) => e.id == paymentEntity.id,
    );
    final List<CoinEntity> newCoins = [...coinsEntity.list];
    final List<PaymentEntity> newHistory = [...coinEntity.history];
    if (newHistory.contains(paymentEntity)) {
      newHistory.remove(paymentEntity);
    } else {
      newHistory.add(paymentEntity);
      newHistory.sort((a, b) {
        return b.dateTime.compareTo(a.dateTime);
      });
    }
    if (newHistory.isNotEmpty) {
      newCoins[newCoins.indexOf(coinEntity)] = coinEntity.copyWith(history: newHistory);
    }
    if (newHistory.isEmpty) {
      newCoins.remove(coinEntity);
    }
    await _updateCoinsEntity(newCoins);
  }
}
