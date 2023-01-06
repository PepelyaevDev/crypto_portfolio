import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_type.dart';
import 'package:equatable/equatable.dart';

class Payment extends Equatable {
  const Payment({
    required this.symbol,
    required this.dateTime,
    required this.type,
    required this.amount,
    required this.numberOfCoins,
  });

  final String symbol;
  final DateTime dateTime;
  final PaymentType type;
  final double amount;
  final double numberOfCoins;

  @override
  List<Object?> get props => [symbol, dateTime, type.name, amount, numberOfCoins];
}
