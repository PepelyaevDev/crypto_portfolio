import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/search/search_dto.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/json_converter.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/entity/search/extension/to_entity.dart';
import 'package:crypto_portfolio/domain/entity/search/search_entity.dart';
import 'package:dartz/dartz.dart';

class MarketRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  MarketRepo(this._hiveApiClient, this._geckoApiClient);

  CoinsEntity getCoinsLocal() {
    return _hiveApiClient.coins.getMarketCoins().convertToCoinsEntity;
  }

  Future<Either<Failure, CoinEntity>> getMarketCoinById(String id) async {
    try {
      final CoinEntity coinEntity =
          (await _geckoApiClient.coins.getMarketCoinById(id)).createEmptyCoin;
      return right(coinEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }

  Future<Either<Failure, CoinsEntity>> getCoinsRemote() async {
    try {
      final List<GeckoCoinDTO> geckoCoins = await _geckoApiClient.coins.getMarketCoins();
      final List<CoinEntity> coinsList = geckoCoins.map((e) => e.createEmptyCoin).toList();
      final CoinsEntity coinsEntity = CoinsEntity(list: coinsList, updateTime: DateTime.now());
      await _hiveApiClient.coins.updateMarketCoins(coinsEntity.convertToJson);
      return right(coinsEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }

  Future<Either<Failure, SearchEntity>> search(String query) async {
    try {
      final SearchDTO searchDTO = await _geckoApiClient.search.search(query);
      final SearchEntity searchEntity = searchDTO.toEntity;
      return right(searchEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }
}
