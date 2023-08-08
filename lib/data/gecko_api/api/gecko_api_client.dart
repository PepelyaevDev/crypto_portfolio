import 'package:crypto_portfolio/data/gecko_api/sources/gecko_coins_source.dart';
import 'package:crypto_portfolio/data/gecko_api/sources/gecko_search_source.dart';
import 'package:dio/dio.dart';

class GeckoApiClient {
  final GeckoCoinsSource coins;
  final GeckoSearchSource search;

  const GeckoApiClient({
    required this.coins,
    required this.search,
  });

  static GeckoApiClient get getClient {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.coingecko.com',
        connectTimeout: Duration(seconds: 5),
        receiveTimeout: Duration(seconds: 5),
        responseType: ResponseType.json,
        validateStatus: (status) {
          final int code = status ?? 500;
          switch (code) {
            case 200:
              return true;
            default:
              return false;
          }
        },
      ),
    );
    return GeckoApiClient(
      coins: GeckoCoinsSource(dio),
      search: GeckoSearchSource(dio),
    );
  }
}
