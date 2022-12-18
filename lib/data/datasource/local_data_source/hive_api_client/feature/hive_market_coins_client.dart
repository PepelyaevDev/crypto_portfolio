import 'package:crypto_portfolio/data/datasource/local_data_source/hive_api_client/core'
    '/hive_constants.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveMarketCoinsClient {
  final _hiveMarketCoinBox = Hive.box<HiveMarketCoin>(HiveConstants.hiveMarketCoinBoxName);

  List<HiveMarketCoin> getMarketCoins() {
    return _hiveMarketCoinBox.values.toList();
  }

  Future<void> updateMarketCoins(List<HiveMarketCoin> data) async {
    await _hiveMarketCoinBox.clear();
    Map<String, HiveMarketCoin> coins = {};
    data.forEach((value) {
      coins[value.symbol] = value;
    });
    await _hiveMarketCoinBox.putAll(coins);
  }
}
