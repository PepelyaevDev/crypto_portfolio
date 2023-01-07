import 'package:crypto_portfolio/data/source/local/hive/core/hive_constants.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin_dto.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveMarketCoinSource {
  final _hiveMarketCoinBox = Hive.box<HiveMarketCoinDTO>(HiveConstants.hiveMarketCoinDTOBoxName);

  List<HiveMarketCoinDTO> getMarketCoins() {
    return _hiveMarketCoinBox.values.toList();
  }

  Future<void> updateMarketCoins(List<HiveMarketCoinDTO> data) async {
    await _hiveMarketCoinBox.clear();
    Map<String, HiveMarketCoinDTO> coins = {};
    for (var value in data) {
      coins[value.symbol] = value;
    }
    await _hiveMarketCoinBox.putAll(coins);
  }
}
