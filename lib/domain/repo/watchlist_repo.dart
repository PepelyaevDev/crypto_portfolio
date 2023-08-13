import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/json_converter.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';

class WatchlistRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  WatchlistRepo(this._hiveApiClient, this._geckoApiClient);

  List<CoinId> getIds() {
    return _hiveApiClient.coins.getWatchlistIds().convertToIdsList;
  }

  Future<List<CoinId>> updateIds({required CoinId id}) async {
    List<CoinId> ids = getIds();
    if (ids.contains(id)) {
      ids.remove(id);
    } else {
      ids.add(id);
    }
    await _hiveApiClient.coins.updateWatchlistIds(ids.convertToJson);
    return ids;
  }

  CoinsEntity getCoinsLocal() {
    return _hiveApiClient.coins.getWatchlistCoins().convertToCoinsEntity;
  }

  Future<Either<Failure, CoinsEntity>> getCoinsRemote() async {
    try {
      final List<CoinId> ids = getIds();
      final List<GeckoCoinDTO> geckoCoins = [];
      if (ids.isNotEmpty) {
        geckoCoins.addAll(await _geckoApiClient.coins.getMarketCoinsByParams(
          paramsList: ids.map((e) => e.toDto).toList(),
        ));
      }
      geckoCoins.sort((a, b) {
        if (a.marketCap == null && b.marketCap == null) {
          return 0;
        } else if (a.marketCap == null) {
          return 1;
        } else if (b.marketCap == null) {
          return -1;
        } else {
          return b.marketCap!.compareTo(a.marketCap!);
        }
      });
      final CoinsEntity coinsEntity = CoinsEntity(
        list: geckoCoins.map((e) => e.createEmptyCoin).toList(),
        updateTime: DateTime.now(),
      );
      await _hiveApiClient.coins.updateWatchlistCoins(coinsEntity.convertToJson);
      return right(coinsEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }
}
