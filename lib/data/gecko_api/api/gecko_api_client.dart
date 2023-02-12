import 'package:crypto_portfolio/data/gecko_api/api/dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/api/error_interceptor.dart';
import 'package:crypto_portfolio/data/gecko_api/sources/gecko_coins_source.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class GeckoApiClient {
  final GeckoCoinsSource coins;

  const GeckoApiClient({
    required this.coins,
  });

  static GeckoApiClient get getClient {
    final dioClient = DioClient(Dio(
      BaseOptions(
        baseUrl: 'https://api.coingecko.com',
        connectTimeout: 15000,
        receiveTimeout: 15000,
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
    )..interceptors.addAll([
        ErrorInterceptor(),
        PrettyDioLogger(requestHeader: true, requestBody: true),
      ]));
    return GeckoApiClient(
      coins: GeckoCoinsSource(dioClient),
    );
  }
}