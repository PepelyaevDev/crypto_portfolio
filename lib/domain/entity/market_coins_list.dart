import 'package:equatable/equatable.dart';

class MarketCoinsList extends Equatable {
  const MarketCoinsList({required this.coins});

  final List<MarketCoin> coins;

  @override
  List<Object?> get props => [coins];
}

class MarketCoin extends Equatable {
  const MarketCoin({
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
  });

  final String symbol;
  final String name;
  final String image;
  final double currentPrice;

  @override
  List<Object?> get props => [symbol, name, image, currentPrice];
}
