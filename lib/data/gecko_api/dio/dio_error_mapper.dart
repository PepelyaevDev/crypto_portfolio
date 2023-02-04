import 'package:crypto_portfolio/data/gecko_api/dio/dio_exceptions.dart';
import 'package:dio/dio.dart';

class DioErrorMapper {
  static DioExceptions transform(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return const DioExceptions.connectionTimeout();
      case DioErrorType.sendTimeout:
        return const DioExceptions.sendTimeout();
      case DioErrorType.receiveTimeout:
        return const DioExceptions.receiveTimeout();
      case DioErrorType.response:
        return handleError(error.response?.statusCode, error.response?.data);
      case DioErrorType.cancel:
        return const DioExceptions.cancel();
      case DioErrorType.other:
        return const DioExceptions.unknown();
      default:
        return const DioExceptions.unknown();
    }
  }

  static DioExceptions handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return const DioExceptions.badRequest();
      case 401:
        return const DioExceptions.unauthorized();
      case 403:
        return const DioExceptions.forbidden();
      case 404:
        return DioExceptions.notFound();
      case 500:
        return const DioExceptions.internalServerError();
      case 502:
        return const DioExceptions.badGateway();
      default:
        return const DioExceptions.unknown();
    }
  }
}
