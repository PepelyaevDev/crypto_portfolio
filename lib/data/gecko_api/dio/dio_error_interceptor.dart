import 'package:crypto_portfolio/data/gecko_api/dio/dio_error_mapper.dart';
import 'package:dio/dio.dart';

extension DioResponse on Response<Object?> {
  bool get isOK => statusCode == 200;
}

class DioErrorInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.isOK != true) {
      throw DioErrorMapper.handleError(response.statusCode, response.data);
    } else {
      super.onResponse(response, handler);
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    throw DioErrorMapper.transform(err);
  }
}
