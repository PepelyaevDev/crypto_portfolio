import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/create_empty_coin.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coins_json_converter.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';

class MarketRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  MarketRepo(this._hiveApiClient, this._geckoApiClient);

  CoinsEntity getCoinsLocal() {
    final CoinsEntity coinsEntity = _hiveApiClient.coins.getMarketCoins().convertToCoinsEntity;
    return coinsEntity;
  }

  Future<Either<Failure, CoinsEntity>> getCoinsRemote() async {
    try {
      final List<GeckoCoinDTO> geckoCoins = await _geckoApiClient.coins.getAllCoins();
      final List<CoinEntity> coinsList = geckoCoins.map((e) => e.createEmptyCoin).toList();
      final CoinsEntity coinsEntity = CoinsEntity(list: coinsList, updateTime: DateTime.now());
      await _hiveApiClient.coins.updateMarketCoins(coinsEntity.convertToJson);
      return right(coinsEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }
}
