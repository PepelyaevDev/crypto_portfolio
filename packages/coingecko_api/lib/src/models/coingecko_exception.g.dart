// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoingeckoException _$CoingeckoExceptionFromJson(Map<String, dynamic> json) =>
    CoingeckoException(
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoingeckoExceptionToJson(CoingeckoException instance) =>
    <String, dynamic>{
      'status': instance.status.toJson(),
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      errorCode: json['error_code'] as int,
      errorMessage: json['error_message'] as String,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'error_code': instance.errorCode,
      'error_message': instance.errorMessage,
    };
