import 'package:crypto_portfolio/data/source/local/hive/core/hive_constants.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_type_entity.dart';
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

  factory HivePaymentDTO.fromEntity(PaymentEntity data) => HivePaymentDTO(
        symbol: data.symbol,
        dateTime: data.dateTime,
        type: data.type.name,
        amount: data.amount,
        numberOfCoins: data.numberOfCoins,
      );

  PaymentEntity toEntity() => PaymentEntity(
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
