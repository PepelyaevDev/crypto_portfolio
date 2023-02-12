// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinsEntity _$$_CoinsEntityFromJson(Map<String, dynamic> json) => _$_CoinsEntity(
      coins: (json['coins'] as List<dynamic>)
          .map((e) => CoinEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      updateTime: DateTime.parse(json['updateTime'] as String),
    );

Map<String, dynamic> _$$_CoinsEntityToJson(_$_CoinsEntity instance) => <String, dynamic>{
      'coins': instance.coins.map((e) => e.toJson()).toList(),
      'updateTime': instance.updateTime.toIso8601String(),
    };

_$_CoinEntity _$$_CoinEntityFromJson(Map<String, dynamic> json) => _$_CoinEntity(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      marketCap: (json['marketCap'] as num).toDouble(),
      buyPrice: (json['buyPrice'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      moneyInvested: (json['moneyInvested'] as num).toDouble(),
      allCoinsCurrentPrice: (json['allCoinsCurrentPrice'] as num).toDouble(),
      history: (json['history'] as List<dynamic>)
          .map((e) => PaymentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CoinEntityToJson(_$_CoinEntity instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'marketCap': instance.marketCap,
      'buyPrice': instance.buyPrice,
      'totalAmount': instance.totalAmount,
      'moneyInvested': instance.moneyInvested,
      'allCoinsCurrentPrice': instance.allCoinsCurrentPrice,
      'history': instance.history.map((e) => e.toJson()).toList(),
    };

_$_PaymentEntity _$$_PaymentEntityFromJson(Map<String, dynamic> json) => _$_PaymentEntity(
      symbol: json['symbol'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
      numberOfCoins: (json['numberOfCoins'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PaymentEntityToJson(_$_PaymentEntity instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'dateTime': instance.dateTime.toIso8601String(),
      'type': instance.type,
      'amount': instance.amount,
      'numberOfCoins': instance.numberOfCoins,
    };