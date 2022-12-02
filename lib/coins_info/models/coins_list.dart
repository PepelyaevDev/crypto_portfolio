import 'package:equatable/equatable.dart';
import 'package:coins_info_repository/coins_info_repository.dart' as coins_info_repository;

class CoinsList extends Equatable {
  const CoinsList({required this.coins});

  factory CoinsList.fromRepository(coins_info_repository.RepositoryMarketCoinsList coinsList) {
    return CoinsList(
      coins: coinsList.coins
          .map(
            (e) => Coin(
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ),
          )
          .toList(),
    );
  }

  factory CoinsList.empty() {
    return CoinsList(coins: []);
  }

  final List<Coin> coins;

  @override
  List<Object> get props => [coins];
}

class Coin extends Equatable {
  const Coin({
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
  List<Object> get props => [symbol, name, image, currentPrice];
}
