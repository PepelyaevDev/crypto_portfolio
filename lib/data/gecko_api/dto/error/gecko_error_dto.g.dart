// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gecko_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeckoErrorDTO _$$_GeckoErrorDTOFromJson(Map<String, dynamic> json) =>
    _$_GeckoErrorDTO(
      status:
          GeckoErrorStatusDTO.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeckoErrorDTOToJson(_$_GeckoErrorDTO instance) =>
    <String, dynamic>{
      'status': instance.status.toJson(),
    };

_$_GeckoErrorStatusDTO _$$_GeckoErrorStatusDTOFromJson(
        Map<String, dynamic> json) =>
    _$_GeckoErrorStatusDTO(
      errorCode: json['error_code'] as int,
      errorMessage: json['error_message'] as String,
    );

Map<String, dynamic> _$$_GeckoErrorStatusDTOToJson(
        _$_GeckoErrorStatusDTO instance) =>
    <String, dynamic>{
      'error_code': instance.errorCode,
      'error_message': instance.errorMessage,
    };
