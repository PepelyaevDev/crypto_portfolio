// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoingeckoException _$CoingeckoExceptionFromJson(Map<String, dynamic> json) =>
    CoingeckoException(
      status: CoingeckoExceptionStatus.fromJson(
          json['status'] as Map<String, dynamic>),
    );

CoingeckoExceptionStatus _$CoingeckoExceptionStatusFromJson(
        Map<String, dynamic> json) =>
    CoingeckoExceptionStatus(
      errorCode: json['error_code'] as int,
      errorMessage: json['error_message'] as String,
    );
