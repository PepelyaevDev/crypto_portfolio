import 'package:equatable/equatable.dart';
import 'payment.dart';

class PortfolioCoinsList extends Equatable {
  const PortfolioCoinsList({required this.coins});

  final List<PortfolioCoin> coins;

  @override
  List<Object?> get props => [coins];
}

class PortfolioCoin extends Equatable {
  const PortfolioCoin({
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
  final List<Payment> history;

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
