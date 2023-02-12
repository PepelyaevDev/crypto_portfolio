import 'package:dio/dio.dart';

class GeckoException implements Exception {
  final String errorMessage;
  const GeckoException({String? message}) : errorMessage = message ?? 'Unknown error';
}

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    throw _DioErrorMapper.transform(err);
  }
}

class _DioErrorMapper {
  static GeckoException transform(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return const GeckoException(message: 'Connection timeout with API server');
      case DioErrorType.sendTimeout:
        return const GeckoException(message: 'Send timeout in connection with API server');
      case DioErrorType.receiveTimeout:
        return const GeckoException(message: 'Receive timeout in connection with API server');
      case DioErrorType.response:
        return handleError(error.response?.statusCode, error.response?.data);
      case DioErrorType.cancel:
        return const GeckoException(message: 'Request to API server was cancelled');
      case DioErrorType.other:
        return const GeckoException();
      default:
        return const GeckoException();
    }
  }

  static GeckoException handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return const GeckoException(message: 'Bad request');
      case 401:
        return const GeckoException(message: 'Unauthorized');
      case 403:
        return const GeckoException(message: 'Forbidden');
      case 404:
        return const GeckoException(message: 'Not found');
      case 429:
        return const GeckoException(message: 'Too many requests');
      case 500:
        return const GeckoException(message: 'Internal server error');
      case 502:
        return const GeckoException(message: 'Bad gateway');
      default:
        return const GeckoException();
    }
  }
}
