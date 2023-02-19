import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(_DioErrorMapper.transform(err));
  }
}

class _DioErrorMapper {
  static DioError transform(DioError error) {
    final String message = getMessage(error);
    return DioError(
      requestOptions: error.requestOptions,
      response: error.response,
      type: error.type,
      error: message,
    );
  }

  static String getMessage(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return 'Connection timeout with API server';
      case DioErrorType.sendTimeout:
        return 'Send timeout in connection with API server';
      case DioErrorType.receiveTimeout:
        return 'Receive timeout in connection with API server';
      case DioErrorType.response:
        return handleError(error.response?.statusCode, error.response?.data);
      case DioErrorType.cancel:
        return 'Request to API server was cancelled';
      case DioErrorType.other:
      default:
        return 'Unknown error';
    }
  }

  static String handleError(int? statusCode, dynamic data) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return 'Not found';
      case 429:
        return 'Too many requests';
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Unknown error';
    }
  }
}
