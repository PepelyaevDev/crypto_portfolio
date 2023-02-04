import 'package:freezed_annotation/freezed_annotation.dart';

part 'gecko_error_dto.freezed.dart';
part 'gecko_error_dto.g.dart';

@freezed
class GeckoErrorDTO with _$GeckoErrorDTO {
  const factory GeckoErrorDTO({
    required GeckoErrorStatusDTO status,
  }) = _GeckoErrorDTO;

  factory GeckoErrorDTO.fromJson(Map<String, Object?> json) => _$GeckoErrorDTOFromJson(json);
}

@freezed
class GeckoErrorStatusDTO with _$GeckoErrorStatusDTO {
  const factory GeckoErrorStatusDTO({
    @JsonKey(name: 'error_code') required int errorCode,
    @JsonKey(name: 'error_message') required String errorMessage,
  }) = _GeckoErrorStatusDTO;

  factory GeckoErrorStatusDTO.fromJson(Map<String, Object?> json) =>
      _$GeckoErrorStatusDTOFromJson(json);
}
