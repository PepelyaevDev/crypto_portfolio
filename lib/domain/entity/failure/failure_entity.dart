import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_entity.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    required DioErrorType errorType,
    required DateTime dateTime,
    int? statusCode,
  }) = _Failure;

  factory Failure.from(Object? e) {
    if (e is DioError) {
      return Failure(
        errorType: e.type,
        dateTime: DateTime.now(),
        statusCode: e.response != null ? e.response!.statusCode : null,
      );
    } else {
      return Failure(errorType: DioErrorType.other, dateTime: DateTime.now());
    }
  }
}
