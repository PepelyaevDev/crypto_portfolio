import 'package:crypto_portfolio/data/datasource/remote_data_source/coingecko_source/market_coins/market_coins_endpoints.dart';

class DioConstants {
  DioConstants._();

  //BaseUrl.
  static const String coingeckoBaseUrl = 'https://api.coingecko.com';

  // ReceiveTimeout.
  static const int receiveTimeout = 15000;

  // ConnectTimeout.
  static const int connectionTimeout = 15000;

  // Endpoints.
  static const MarketCoinsEndpoints marketCoinsEndpoints = MarketCoinsEndpoints();
}
