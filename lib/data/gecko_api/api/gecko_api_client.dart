import 'dart:io';

import 'package:crypto_portfolio/common/utils/extensions/int_extension.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/sources/gecko_coins_source.dart';
import 'package:crypto_portfolio/data/gecko_api/sources/gecko_search_source.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

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
        validateStatus: (status) => status.validateHttpResponseStatus,
      ),
    )..interceptors.add(_TokenInterceptor());

    final geckoDioClient = GeckoDioClient(dio);

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () => HttpClient()
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;

    return GeckoApiClient(
      coins: GeckoCoinsSource(geckoDioClient),
      search: GeckoSearchSource(geckoDioClient),
    );
  }
}

class _TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'x_cg_demo_api_key': 'CG-P2tNAqVzD3yUQHSwAmgfbSyE',
    });
    super.onRequest(options, handler);
  }
}
