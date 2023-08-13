import 'package:hive/hive.dart';

class HiveCoinsSource {
  final Box _appBox;
  const HiveCoinsSource(this._appBox);

  static const String _marketCoinsBoxKey = 'marketCoinsBoxKey';
  static const String _portfolioCoinsBoxKey = 'portfolioCoinsBoxKey';
  static const String _watchlistCoinsBoxKey = 'watchlistCoinsBoxKey';
  static const String _watchlistIdsBoxKey = 'watchlistSymbolsBoxKey';

  //WatchlistIds
  String? getWatchlistIds() {
    return _appBox.get(_watchlistIdsBoxKey);
  }

  Future<void> updateWatchlistIds(String json) async {
    await _appBox.put(_watchlistIdsBoxKey, json);
  }

  //WatchlistCoins
  String? getWatchlistCoins() {
    return _appBox.get(_watchlistCoinsBoxKey);
  }

  Future<void> updateWatchlistCoins(String json) async {
    await _appBox.put(_watchlistCoinsBoxKey, json);
  }

  //MarketCoins
  String? getMarketCoins() {
    return _appBox.get(_marketCoinsBoxKey);
  }

  Future<void> updateMarketCoins(String json) async {
    await _appBox.put(_marketCoinsBoxKey, json);
  }

  //PortfolioCoins
  String? getPortfolioCoins() {
    return _appBox.get(_portfolioCoinsBoxKey);
  }

  Future<void> updatePortfolioCoins(String json) async {
    await _appBox.put(_portfolioCoinsBoxKey, json);
  }
}
