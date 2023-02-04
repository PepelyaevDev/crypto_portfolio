import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_entity.freezed.dart';
part 'coins_entity.g.dart';

@freezed
class CoinsEntity with _$CoinsEntity {
  const factory CoinsEntity({
    required List<CoinEntity> coins,
    required DateTime updateTime,
  }) = _CoinsEntity;

  factory CoinsEntity.fromJson(Map<String, Object?> json) => _$CoinsEntityFromJson(json);
}

@freezed
class CoinEntity with _$CoinEntity {
  const factory CoinEntity({
    required String symbol,
    required String name,
    required String image,
    required double currentPrice,
    required double marketCap,
    required double buyPrice,
    required double totalAmount,
    required double moneyInvested,
    required double allCoinsCurrentPrice,
    required List<PaymentEntity> history,
  }) = _CoinEntity;

  factory CoinEntity.fromJson(Map<String, Object?> json) => _$CoinEntityFromJson(json);
}

@freezed
class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    required String symbol,
    required DateTime dateTime,
    required String type,
    required double amount,
    required double numberOfCoins,
  }) = _PaymentEntity;

  factory PaymentEntity.fromJson(Map<String, Object?> json) => _$PaymentEntityFromJson(json);
}

class PaymentType {
  static const String withdraw = 'withdraw';
  static const String deposit = 'deposit';
}
