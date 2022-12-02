import 'package:hive_api/hive_api.dart';

class RepositoryMarketCoinsList {
  const RepositoryMarketCoinsList({required this.coins});

  factory RepositoryMarketCoinsList.fromHiveApi(HiveMarketCoinsList coinsList) {
    return RepositoryMarketCoinsList(
      coins: coinsList.coins
          .map(
            (e) => RepositoryMarketCoin(
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ),
          )
          .toList(),
    );
  }

  final List<RepositoryMarketCoin> coins;
}

class RepositoryMarketCoin {
  const RepositoryMarketCoin({
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
  });

  final String symbol;
  final String name;
  final String image;
  final double currentPrice;
}
