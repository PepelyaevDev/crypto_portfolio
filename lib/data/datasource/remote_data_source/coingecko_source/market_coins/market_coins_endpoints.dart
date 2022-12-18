class MarketCoinsEndpoints {
  const MarketCoinsEndpoints();
  static const _marketCoinsApi = '/api/v3/coins/';

  String get list => '$_marketCoinsApi/markets/';
}
