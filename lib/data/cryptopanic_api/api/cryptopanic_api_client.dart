import 'package:crypto_portfolio/common/utils/extensions/int_extension.dart';
import 'package:crypto_portfolio/common/utils/interceptors/token_interceptor.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/sources/cryptopanic_news_source.dart';
import 'package:crypto_portfolio/data/firebase_api/app_config.dart';
import 'package:dio/dio.dart';

class CryptopanicApiClient {
  final CryptopanicNewsSource news;

  const CryptopanicApiClient({required this.news});

  static CryptopanicApiClient getClient(DataSourceConfig config) {
    final dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: Duration(seconds: 15),
        receiveTimeout: Duration(seconds: 15),
        responseType: ResponseType.json,
        validateStatus: (status) => status.validateHttpResponseStatus,
      ),
    )..interceptors.add(TokenInterceptor(config));
    return CryptopanicApiClient(
      news: CryptopanicNewsSource(dio),
    );
  }
}
