import 'package:hive/hive.dart';

class HiveCoinsSource {
  final Box _appBox;
  const HiveCoinsSource(this._appBox);

  static const String _marketCoinsBoxKey = 'marketCoinsBoxKey';
  static const String _portfolioCoinsBoxKey = 'portfolioCoinsBoxKey';

  String? getMarketCoins() {
    return _appBox.get(_marketCoinsBoxKey);
  }

  Future<void> updateMarketCoins(String json) async {
    await _appBox.put(_marketCoinsBoxKey, json);
  }

  String? getPortfolioCoins() {
    return _appBox.get(_portfolioCoinsBoxKey);
  }

  Future<void> updatePortfolioCoins(String json) async {
    await _appBox.put(_portfolioCoinsBoxKey, json);
  }
}
