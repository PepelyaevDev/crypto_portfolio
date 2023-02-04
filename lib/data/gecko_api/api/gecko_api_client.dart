import 'package:crypto_portfolio/data/gecko_api/api/gecko_coins_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dio/dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dio/dio_constants.dart';
import 'package:crypto_portfolio/data/gecko_api/dio/dio_error_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class GeckoApiClient {
  GeckoApiClient({required this.coins});
  final GeckoCoinsApiClient coins;

  static GeckoApiClient getClient({DioClient? mockDioClient}) {
    final dioClient = mockDioClient ??
        DioClient(Dio(
          BaseOptions(
            baseUrl: DioConstants.geckoBaseUrl,
            connectTimeout: DioConstants.connectionTimeout,
            receiveTimeout: DioConstants.receiveTimeout,
            responseType: ResponseType.json,
            validateStatus: (status) => (status ?? 500) < 500,
          ),
        )..interceptors.addAll([
            DioErrorInterceptor(),
            PrettyDioLogger(requestHeader: true, requestBody: true),
          ]));
    return GeckoApiClient(
      coins: GeckoCoinsApiClient(dioClient),
    );
  }
}
