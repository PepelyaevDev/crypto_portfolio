class RepositoryPortfolioCoinsList {
  const RepositoryPortfolioCoinsList({required this.coins});

  final List<RepositoryPortfolioCoin> coins;
}

class RepositoryPortfolioCoin {
  const RepositoryPortfolioCoin({
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.history,
  });

  final String symbol;
  final String name;
  final String image;
  final double currentPrice;
  final RepositoryPaymentHistory history;
}

class RepositoryPaymentHistory {
  const RepositoryPaymentHistory({required this.data});

  final List<RepositoryPayment> data;
}

class RepositoryPayment {
  const RepositoryPayment({required this.type, required this.amount, required this.numberOfCoins});

  final RepositoryPaymentType type;
  final double amount;
  final double numberOfCoins;
}

enum RepositoryPaymentType {
  Withdraw,
  Deposit,
}
