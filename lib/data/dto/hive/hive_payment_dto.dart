import 'package:crypto_portfolio/data/source/local/hive/core/hive_constants.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_type.dart';
import 'package:hive/hive.dart';

part 'hive_payment_dto.g.dart';

@HiveType(typeId: HiveConstants.hivePaymentDTOTypeId)
class HivePaymentDTO {
  const HivePaymentDTO({
    required this.symbol,
    required this.dateTime,
    required this.type,
    required this.amount,
    required this.numberOfCoins,
  });

  factory HivePaymentDTO.fromEntity(Payment data) => HivePaymentDTO(
        symbol: data.symbol,
        dateTime: data.dateTime,
        type: data.type.name,
        amount: data.amount,
        numberOfCoins: data.numberOfCoins,
      );

  Payment toEntity() => Payment(
        symbol: symbol,
        dateTime: dateTime,
        type: type.getPaymentType(),
        amount: amount,
        numberOfCoins: numberOfCoins,
      );

  @HiveField(0)
  final String symbol;
  @HiveField(1)
  final DateTime dateTime;
  @HiveField(2)
  final String type;
  @HiveField(3)
  final double amount;
  @HiveField(4)
  final double numberOfCoins;
}
