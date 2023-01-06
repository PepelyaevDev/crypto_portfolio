import 'package:crypto_portfolio/data/source/remote/gecko/market_coins/gecko_market_coin_endpoint.dart';

class DioConstants {
  //BaseUrl.
  static const String geckoBaseUrl = 'https://api.coingecko.com';

  // ReceiveTimeout.
  static const int receiveTimeout = 15000;

  // ConnectTimeout.
  static const int connectionTimeout = 15000;

  // Endpoints.
  static const GeckoMarketCoinEndpoint marketCoinsEndpoints = GeckoMarketCoinEndpoint();
}
