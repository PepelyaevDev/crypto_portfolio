import 'package:json_annotation/json_annotation.dart';

part 'coingecko_exception.g.dart';

@JsonSerializable(createToJson: false)
class CoingeckoException implements Exception {
  const CoingeckoException({required this.status});

  factory CoingeckoException.fromJson(Map<String, dynamic> json) =>
      _$CoingeckoExceptionFromJson(json);

  final CoingeckoExceptionStatus status;
}

@JsonSerializable(createToJson: false)
class CoingeckoExceptionStatus {
  const CoingeckoExceptionStatus({
    required this.errorCode,
    required this.errorMessage,
  });

  factory CoingeckoExceptionStatus.fromJson(Map<String, dynamic> json) =>
      _$CoingeckoExceptionStatusFromJson(json);

  @JsonKey(name: 'error_code')
  final int errorCode;
  @JsonKey(name: 'error_message')
  final String errorMessage;
}
