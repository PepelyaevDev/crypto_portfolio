import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/prices/prices.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coins_json_converter.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';

class PortfolioRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  PortfolioRepo(this._hiveApiClient, this._geckoApiClient);

  CoinsEntity getCoinsLocal() {
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    return coinsEntity;
  }

  Future<Either<Failure, CoinsEntity>> getCoinsRemote() async {
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
      final CoinsEntity updatedCoinsEntity = CoinsEntity(
        list: updatedCoinsList,
        updateTime: DateTime.now(),
      );
      await _hiveApiClient.coins.updatePortfolioCoins(updatedCoinsEntity.convertToJson);
      return right(updatedCoinsEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }

  Future<CoinsEntity> updateHistory(PaymentEntity paymentEntity) async {
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getPortfolioCoins().convertToCoinsEntity;
    final CoinEntity coinEntity = coinsEntity.list.firstWhere(
      (e) => e.symbol == paymentEntity.symbol,
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
    newCoins[newCoins.indexOf(coinEntity)] = coinEntity.copyWith(history: newHistory);
    final CoinsEntity newCoinsEntity = CoinsEntity(
      list: newCoins,
      updateTime: coinsEntity.updateTime,
    );
    await _hiveApiClient.coins.updatePortfolioCoins(newCoinsEntity.convertToJson);
    return newCoinsEntity;
  }
}
