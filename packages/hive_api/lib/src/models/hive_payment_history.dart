import 'package:hive/hive.dart';
import 'hive_constants.dart';

part 'hive_payment_history.g.dart';

@HiveType(typeId: hivePaymentHistoryTypeId)
class HivePaymentHistory {
  const HivePaymentHistory({required this.data});

  @HiveField(0)
  final List<HivePayment> data;
}

@HiveType(typeId: hivePaymentTypeId)
class HivePayment {
  const HivePayment({required this.type, required this.amount, required this.numberOfCoins});

  @HiveField(0)
  final HivePaymentType type;
  @HiveField(1)
  final double amount;
  @HiveField(2)
  final double numberOfCoins;
}

@HiveType(typeId: hivePaymentTypeTypeId)
enum HivePaymentType {
  @HiveField(0)
  Withdraw,
  @HiveField(1)
  Deposit,
}
