import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_exceptions.freezed.dart';

@freezed
class DioExceptions with _$DioExceptions implements Exception {
  //Exception for DioErrorType.connectTimeout
  const factory DioExceptions.connectionTimeout([
    @Default('Connection timeout with API server') String message,
  ]) = ConnectionTimeoutException;

  //Exception for DioErrorType.sendTimeout
  const factory DioExceptions.sendTimeout([
    @Default('Send timeout in connection with API server') String message,
  ]) = SendTimeoutException;

  //Exception for DioErrorType.receiveTimeout
  const factory DioExceptions.receiveTimeout([
    @Default('Receive timeout in connection with API server') String message,
  ]) = ReceiveTimeoutException;

  //Exception for DioErrorType.response status:400
  const factory DioExceptions.badRequest([
    @Default('Bad request') String message,
  ]) = BadRequestException;

  //Exception for DioErrorType.response status:401
  const factory DioExceptions.unauthorized([
    @Default('Unauthorized') String message,
  ]) = UnauthorizedException;

  //Exception for DioErrorType.response status:403
  const factory DioExceptions.forbidden([
    @Default('Forbidden') String message,
  ]) = ForbiddenException;

  //Exception for DioErrorType.response status:404
  const factory DioExceptions.notFound([
    @Default('Not Found') String message,
  ]) = NotFoundException;

  //Exception for DioErrorType.response status:500
  const factory DioExceptions.internalServerError([
    @Default('Internal server error') String message,
  ]) = InternalServerErrorException;

  //Exception for DioErrorType.response status:502
  const factory DioExceptions.badGateway([
    @Default('Bad gateway') String message,
  ]) = BadGatewayException;

  //Exception for DioErrorType.cancel
  const factory DioExceptions.cancel([
    @Default('Request to API server was cancelled') String message,
  ]) = RequestCancelledException;

  //Exception for DioErrorType.other
  const factory DioExceptions.unknown([
    @Default('Unknown error') String message,
  ]) = UnknownException;
}
