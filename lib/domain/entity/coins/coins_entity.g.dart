// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinsEntity _$$_CoinsEntityFromJson(Map<String, dynamic> json) =>
    _$_CoinsEntity(
      list: (json['list'] as List<dynamic>)
          .map((e) => CoinEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      updateTime: DateTime.parse(json['updateTime'] as String),
    );

Map<String, dynamic> _$$_CoinsEntityToJson(_$_CoinsEntity instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
      'updateTime': instance.updateTime.toIso8601String(),
    };

_$_CoinEntity _$$_CoinEntityFromJson(Map<String, dynamic> json) =>
    _$_CoinEntity(
      symbol: json['symbol'] as String,
      image: json['image'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      marketCap: (json['marketCap'] as num).toDouble(),
      priceChangePercentage24H:
          (json['priceChangePercentage24H'] as num).toDouble(),
      marketCapRank: (json['marketCapRank'] as num?)?.toDouble(),
      circulatingSupply: (json['circulatingSupply'] as num?)?.toDouble(),
      totalSupply: (json['totalSupply'] as num?)?.toDouble(),
      maxSupply: (json['maxSupply'] as num?)?.toDouble(),
      history: (json['history'] as List<dynamic>)
          .map((e) => PaymentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CoinEntityToJson(_$_CoinEntity instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'marketCap': instance.marketCap,
      'priceChangePercentage24H': instance.priceChangePercentage24H,
      'marketCapRank': instance.marketCapRank,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'maxSupply': instance.maxSupply,
      'history': instance.history.map((e) => e.toJson()).toList(),
    };

_$_PaymentEntity _$$_PaymentEntityFromJson(Map<String, dynamic> json) =>
    _$_PaymentEntity(
      symbol: json['symbol'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
      numberOfCoins: (json['numberOfCoins'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PaymentEntityToJson(_$_PaymentEntity instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'dateTime': instance.dateTime.toIso8601String(),
      'type': instance.type,
      'amount': instance.amount,
      'numberOfCoins': instance.numberOfCoins,
    };
