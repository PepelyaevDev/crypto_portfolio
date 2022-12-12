import 'package:hive/hive.dart';
import '../../datasource/hive_api_client/core/hive_constants.dart';

part 'hive_payment.g.dart';

@HiveType(typeId: hivePaymentTypeId)
class HivePayment {
  const HivePayment({
    required this.symbol,
    required this.dateTime,
    required this.type,
    required this.amount,
    required this.numberOfCoins,
  });

  @HiveField(0)
  final String symbol;
  @HiveField(1)
  final DateTime dateTime;
  @HiveField(2)
  final HivePaymentType type;
  @HiveField(3)
  final double amount;
  @HiveField(4)
  final double numberOfCoins;
}

@HiveType(typeId: hivePaymentTypeTypeId)
enum HivePaymentType {
  @HiveField(0)
  Withdraw,
  @HiveField(1)
  Deposit,
}
