import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_entity.freezed.dart';

enum ErrorType { connectTimeout, sendTimeout, receiveTimeout, response, cancel, other }

@freezed
class Failure with _$Failure {
  const factory Failure({
    required ErrorType errorType,
    required DateTime dateTime,
    int? statusCode,
  }) = _Failure;

  factory Failure.from(Object e) {
    if (e is DioError) {
      return Failure(
        errorType: ErrorType.values.firstWhere((t) => t.name == e.type.name),
        dateTime: DateTime.now(),
        statusCode: e.response != null ? e.response!.statusCode : null,
      );
    } else {
      return Failure(errorType: ErrorType.other, dateTime: DateTime.now());
    }
  }
}
