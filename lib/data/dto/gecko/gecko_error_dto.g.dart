// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gecko_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeckoErrorDTO _$GeckoErrorDTOFromJson(Map<String, dynamic> json) => GeckoErrorDTO(
      status: GeckoErrorStatusDTO.fromJson(json['status'] as Map<String, dynamic>),
    );

GeckoErrorStatusDTO _$GeckoErrorStatusDTOFromJson(Map<String, dynamic> json) => GeckoErrorStatusDTO(
      errorCode: json['error_code'] as int,
      errorMessage: json['error_message'] as String,
    );
