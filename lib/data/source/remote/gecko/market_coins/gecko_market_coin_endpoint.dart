class GeckoMarketCoinEndpoint {
  const GeckoMarketCoinEndpoint();

  static const _path = '/api/v3/coins/';

  String get list => '$_path/markets/';
}
