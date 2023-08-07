import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  final DateTime time;
  Failure() : time = DateTime.now();

  factory Failure.from(Object? e) {
    if (e is DioException) {
      if (e.response != null) {
        return switch (e.response!.statusCode) {
          429 => TooManyRequestsFailure(),
          _ => UnknownFailure(),
        };
      }
      return UnknownFailure();
    } else {
      return UnknownFailure();
    }
  }

  @override
  List<Object?> get props => [time];
}

class UnknownFailure extends Failure {}

class TooManyRequestsFailure extends Failure {}
