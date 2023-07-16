import 'dart:convert';

import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/to_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/json_converter.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';

class WatchlistRepo {
  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;
  WatchlistRepo(this._hiveApiClient, this._geckoApiClient);

  List<String> getSymbols() {
    final String? result = _hiveApiClient.coins.getWatchlistSymbols();
    if (result == null) {
      return [];
    }
    return List<String>.from(jsonDecode(result));
  }

  Future<List<String>> updateSymbols({required String symbol}) async {
    List<String> symbols = getSymbols();
    if (symbols.contains(symbol)) {
      symbols.remove(symbol);
    } else {
      symbols.add(symbol);
    }
    await _hiveApiClient.coins.updateWatchlistSymbols(jsonEncode(symbols));
    return symbols;
  }

  CoinsEntity getCoinsLocal() {
    return _hiveApiClient.coins.getWatchlistCoins().convertToCoinsEntity;
  }

  Future<Either<Failure, CoinsEntity>> getCoinsRemote() async {
    try {
      final List<String> symbols = getSymbols();
      final List<GeckoCoinDTO> geckoCoins = [];
      if (symbols.isNotEmpty) {
        geckoCoins.addAll(await _geckoApiClient.coins.getMarketCoinsBySymbols(
          symbols: symbols,
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
