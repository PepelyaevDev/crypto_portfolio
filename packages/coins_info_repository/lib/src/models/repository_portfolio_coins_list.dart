import 'package:hive_api/hive_api.dart';

class RepositoryPortfolioCoinsList {
  const RepositoryPortfolioCoinsList({required this.coins});

  factory RepositoryPortfolioCoinsList.fromHiveApi({
    required HiveMarketCoinsList hiveMarketCoinsList,
    required HivePortfolioCoinsList hivePortfolioCoinsList,
  }) {
    return RepositoryPortfolioCoinsList(
      coins: hivePortfolioCoinsList.coins.map((e) {
        HiveMarketCoin hiveMarketCoin = hiveMarketCoinsList.coins.firstWhere((element) => element.symbol == e.symbol);
        return RepositoryPortfolioCoin(
            symbol: hiveMarketCoin.symbol,
            name: hiveMarketCoin.name,
            image: hiveMarketCoin.image,
            currentPrice: hiveMarketCoin.currentPrice,
            history: RepositoryPaymentHistory(
              data: e.history.data
                  .map((e) => RepositoryPayment(
                        type: e.type.convertToRepositoryPaymentType(),
                        amount: e.amount,
                        numberOfCoins: e.numberOfCoins,
                      ))
                  .toList(),
            ));
      }).toList(),
    );
  }

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

extension HiveToRepositoryPaymentType on HivePaymentType {
  RepositoryPaymentType convertToRepositoryPaymentType() {
    switch (this) {
      case HivePaymentType.Deposit:
        return RepositoryPaymentType.Deposit;
      case HivePaymentType.Withdraw:
        return RepositoryPaymentType.Withdraw;
    }
  }
}
