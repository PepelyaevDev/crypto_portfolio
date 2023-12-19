import 'dart:io';

import 'package:crypto_portfolio/common/utils/extensions/int_extension.dart';
import 'package:crypto_portfolio/common/utils/interceptors/token_interceptor.dart';
import 'package:crypto_portfolio/data/firebase_api/app_config.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/sources/gecko_coins_source.dart';
import 'package:crypto_portfolio/data/gecko_api/sources/gecko_search_source.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class GeckoApiClient {
  //Waiting time to resend the request (in seconds)
  static const waitingForRequestRetry = 120;
  final GeckoCoinsSource coins;
  final GeckoSearchSource search;

  const GeckoApiClient({
    required this.coins,
    required this.search,
  });

  static GeckoApiClient getClient(DataSourceConfig config) {
    final dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: Duration(seconds: 5),
        receiveTimeout: Duration(seconds: 5),
        responseType: ResponseType.json,
        validateStatus: (status) => status.validateHttpResponseStatus,
      ),
    )..interceptors.add(TokenInterceptor(config));

    final geckoDioClient = GeckoDioClient(dio);

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () => HttpClient()
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;

    return GeckoApiClient(
      coins: GeckoCoinsSource(geckoDioClient),
      search: GeckoSearchSource(geckoDioClient),
    );
  }
}
