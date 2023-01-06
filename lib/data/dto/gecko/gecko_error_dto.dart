import 'package:json_annotation/json_annotation.dart';

part 'gecko_error_dto.g.dart';

@JsonSerializable(createToJson: false)
class GeckoErrorDTO implements Exception {
  const GeckoErrorDTO({required this.status});

  factory GeckoErrorDTO.fromJson(Map<String, dynamic> json) => _$GeckoErrorDTOFromJson(json);

  final GeckoErrorStatusDTO status;
}

@JsonSerializable(createToJson: false)
class GeckoErrorStatusDTO {
  const GeckoErrorStatusDTO({
    required this.errorCode,
    required this.errorMessage,
  });

  factory GeckoErrorStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$GeckoErrorStatusDTOFromJson(json);

  @JsonKey(name: 'error_code')
  final int errorCode;
  @JsonKey(name: 'error_message')
  final String errorMessage;
}
