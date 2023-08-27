import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/hive_api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';

class WatchlistRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  WatchlistRepo(this._hiveApiClient, this._geckoApiClient);

  List<CoinId> get getIds => _hiveApiClient.watchlistIds.values ?? [];

  List<CoinId> updateIds({required CoinId id}) {
    List<CoinId> ids = getIds;
    if (ids.contains(id)) {
      ids.remove(id);
    } else {
      ids.add(id);
    }
    _hiveApiClient.watchlistIds.put(ids);
    return ids;
  }

  CoinsEntity get getCoinsLocal => _hiveApiClient.watchlistCoins.value.convertFromNullable;

  Future<Either<Failure, CoinsEntity>> getCoinsRemote() async {
    try {
      final List<CoinId> ids = getIds;
      final List<GeckoCoinDTO> geckoCoins = [];
      if (ids.isNotEmpty) {
        geckoCoins.addAll(
          await _geckoApiClient.coins.getMarketCoinsByParams(
            paramsList: ids.map((e) => e.toDto).toList(),
          ),
        );
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
      _hiveApiClient.watchlistCoins.put(coinsEntity);
      return right(coinsEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }
}
