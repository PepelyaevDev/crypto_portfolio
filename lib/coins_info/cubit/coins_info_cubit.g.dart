// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_info_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinsInfoState _$CoinsInfoStateFromJson(Map<String, dynamic> json) =>
    CoinsInfoState(
      status: $enumDecodeNullable(_$CoinsInfoStatusEnumMap, json['status']) ??
          CoinsInfoStatus.initial,
      coinsList: json['coinsList'] == null
          ? null
          : CoinsList.fromJson(json['coinsList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinsInfoStateToJson(CoinsInfoState instance) =>
    <String, dynamic>{
      'status': _$CoinsInfoStatusEnumMap[instance.status]!,
      'coinsList': instance.coinsList.toJson(),
    };

const _$CoinsInfoStatusEnumMap = {
  CoinsInfoStatus.initial: 'initial',
  CoinsInfoStatus.loading: 'loading',
  CoinsInfoStatus.success: 'success',
  CoinsInfoStatus.failure: 'failure',
};
