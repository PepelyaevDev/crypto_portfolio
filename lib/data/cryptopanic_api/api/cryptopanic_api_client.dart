import 'package:crypto_portfolio/common/utils/extensions/int_extension.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/sources/cryptopanic_news_source.dart';
import 'package:dio/dio.dart';

class CryptopanicApiClient {
  final CryptopanicNewsSource news;

  const CryptopanicApiClient({required this.news});

  static CryptopanicApiClient get getClient {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://cryptopanic.com/api/v1',
        connectTimeout: Duration(seconds: 15),
        receiveTimeout: Duration(seconds: 15),
        responseType: ResponseType.json,
        validateStatus: (status) => status.validateHttpResponseStatus,
      ),
    )..interceptors.add(_TokenInterceptor());
    return CryptopanicApiClient(
      news: CryptopanicNewsSource(dio),
    );
  }
}

class _TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'auth_token': '103be014c698a0e0f0ef21e83ee047bb65731bcf',
    });
    super.onRequest(options, handler);
  }
}
