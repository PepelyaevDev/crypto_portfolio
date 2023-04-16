import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/prices/prices.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/json_converter.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

class PortfolioRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  PortfolioRepo(this._hiveApiClient, this._geckoApiClient);

  final BehaviorSubject<Either<Failure, CoinsEntity>> coinsSubject = BehaviorSubject();

  Future<void> _updatedCoinsEntity(List<CoinEntity> coinsList) async {
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

  Future<void> updateCoinMarketData(String id) async {
    ///TODO: метод для обновления данных монеты для детальной страницы приложения
  }

  Future<void> updateCoinsPrice() async {
    try {
      final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
      final PricesDTO pricesDTO = await _geckoApiClient.simple.getPrice(
        coinsEntity.list.map((e) => e.id).toList(),
      );
      final List<CoinEntity> updatedCoinsList = [];
      for (final coin in coinsEntity.list) {
        updatedCoinsList.add(
          coin.copyWith(currentPrice: pricesDTO.coins.firstWhere((e) => e.id == coin.id).value),
        );
      }
      await _updatedCoinsEntity(updatedCoinsList);
    } catch (e) {
      coinsSubject.add(left(Failure.from(e)));
    }
  }

  Future<void> addNewCoinToCoinsList(CoinEntity coinEntity) async {
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    if (coinsEntity.list.where((e) => e.id == coinEntity.id).isNotEmpty) return;
    await _updatedCoinsEntity([...coinsEntity.list, coinEntity]);
  }

  Future<void> updateHistory(PaymentEntity paymentEntity) async {
    //adding and removing payments
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    final CoinEntity coinEntity = coinsEntity.list.firstWhere(
      (e) => e.id == paymentEntity.id,
    );
    final List<CoinEntity> newCoins = [];
    newCoins.addAll(coinsEntity.list);
    final List<PaymentEntity> newHistory = [];
    newHistory.addAll(coinEntity.history);
    if (newHistory.contains(paymentEntity)) {
      newHistory.remove(paymentEntity);
    } else {
      newHistory.add(paymentEntity);
    }
    if (newHistory.isNotEmpty) {
      newCoins[newCoins.indexOf(coinEntity)] = coinEntity.copyWith(history: newHistory);
    }
    if (newHistory.isEmpty) {
      newCoins.remove(coinEntity);
    }
    await _updatedCoinsEntity(newCoins);
  }
}
