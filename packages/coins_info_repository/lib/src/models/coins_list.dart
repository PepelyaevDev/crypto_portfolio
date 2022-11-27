import 'package:coingecko_api/coingecko_api.dart' as coingecko_api;

class CoinsList {
  const CoinsList({required this.coins});

  factory CoinsList.fromApi(coingecko_api.CoinsList coinsList) {
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

  final List<Coin> coins;
}

class Coin {
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
}
