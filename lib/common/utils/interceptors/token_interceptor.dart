import 'package:crypto_portfolio/data/firebase_api/app_config.dart';
import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final DataSourceConfig config;
  const TokenInterceptor(this.config);
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (config.tokenValue.isNotEmpty) {
      options.queryParameters.addAll({
        config.tokenKey: config.tokenValue,
      });
    }
    super.onRequest(options, handler);
  }
}
