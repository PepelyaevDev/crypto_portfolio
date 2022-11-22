import 'package:json_annotation/json_annotation.dart';

part 'coingecko_exception.g.dart';

@JsonSerializable(createToJson: false)
class CoingeckoException implements Exception {
  const CoingeckoException({required this.status});

  factory CoingeckoException.fromJson(Map<String, dynamic> json) => _$CoingeckoExceptionFromJson(json);

  final Status status;
}

@JsonSerializable(createToJson: false)
class Status {
  const Status({
    required this.errorCode,
    required this.errorMessage,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  @JsonKey(name: 'error_code')
  final int errorCode;
  @JsonKey(name: 'error_message')
  final String errorMessage;
}
