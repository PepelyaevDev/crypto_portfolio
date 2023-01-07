import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_type_entity.dart';
import 'package:equatable/equatable.dart';

class PaymentEntity extends Equatable {
  const PaymentEntity({
    required this.symbol,
    required this.dateTime,
    required this.type,
    required this.amount,
    required this.numberOfCoins,
  });

  final String symbol;
  final DateTime dateTime;
  final PaymentTypeEntity type;
  final double amount;
  final double numberOfCoins;

  @override
  List<Object?> get props => [symbol, dateTime, type.name, amount, numberOfCoins];
}
