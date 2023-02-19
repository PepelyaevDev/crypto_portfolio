import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_entity.freezed.dart';

@freezed
class Failure with _$Failure {
  static const defaultError = 'Something went wrong. Try again later please.';

  const factory Failure({
    @Default(Failure.defaultError) String errorMessage,
  }) = _Failure;

  factory Failure.from(Object e) {
    if (e is DioError) {
      String errorMessage = defaultError;
      if (e.error is String) {
        errorMessage = e.error as String;
      }
      return Failure(errorMessage: errorMessage);
    } else {
      return Failure();
    }
  }
}
