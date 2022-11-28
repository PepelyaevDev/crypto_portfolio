import 'package:equatable/equatable.dart';
import 'package:coins_info_repository/coins_info_repository.dart' as coins_info_repository;

class CoinsList extends Equatable {
  const CoinsList({required this.coins});

  factory CoinsList.fromRepository(coins_info_repository.CoinsList coinsList) {
    return CoinsList(
      coins: coinsList.coins
          .map(
            (e) => Coin(
              id: e.id,
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ),
          )
          .toList(),
    );
  }

  static final empty = CoinsList(coins: const []);

  final List<Coin> coins;

  @override
  List<Object> get props => [coins];
}

class Coin extends Equatable {
  const Coin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
  });

  final String id;
  final String symbol;
  final String name;
  final String image;
  final double currentPrice;

  @override
  List<Object> get props => [id, symbol, name, image, currentPrice];
}
