import 'package:json_annotation/json_annotation.dart';

part 'coingecko_exception.g.dart';

@JsonSerializable(explicitToJson: true)
class CoingeckoException implements Exception {
  CoingeckoException({required this.status});

  factory CoingeckoException.fromJson(Map<String, dynamic> json) => _$CoingeckoExceptionFromJson(json);

  Map<String, dynamic> toJson() => _$CoingeckoExceptionToJson(this);

  final Status status;
}

@JsonSerializable(explicitToJson: true)
class Status {
  Status({
    required this.errorCode, required this.errorMessage,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  @JsonKey(name: 'error_code')
  final int errorCode;
  @JsonKey(name: 'error_message')
  final String errorMessage;
}