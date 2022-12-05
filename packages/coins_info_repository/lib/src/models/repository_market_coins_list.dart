class RepositoryMarketCoinsList {
  const RepositoryMarketCoinsList({required this.coins});

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
