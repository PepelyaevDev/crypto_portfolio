import 'package:equatable/equatable.dart';
import 'payment_entity.dart';

class PortfolioCoinEntity extends Equatable {
  const PortfolioCoinEntity({
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.buyPrice,
    required this.totalAmount,
    required this.moneyInvested,
    required this.allCoinsCurrentPrice,
    required this.history,
  });

  final String symbol;
  final String name;
  final String image;
  final double currentPrice;
  final double buyPrice;
  final double totalAmount;
  final double moneyInvested;
  final double allCoinsCurrentPrice;
  final List<PaymentEntity> history;

  @override
  List<Object?> get props => [
        symbol,
        name,
        image,
        currentPrice,
        buyPrice,
        totalAmount,
        moneyInvested,
        allCoinsCurrentPrice,
        history,
      ];
}
