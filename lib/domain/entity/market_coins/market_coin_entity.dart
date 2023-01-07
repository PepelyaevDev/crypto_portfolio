import 'package:equatable/equatable.dart';

class MarketCoinEntity extends Equatable {
  const MarketCoinEntity({
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
