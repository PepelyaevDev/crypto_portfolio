import 'package:coingecko_api/coingecko_api.dart';
import 'package:hive_api/hive_api.dart';
import '../../coins_info_repository.dart';

class RepositoryConverter {
  RepositoryPaymentType hiveToRepositoryPaymentType(HivePaymentType data) {
    switch (data) {
      case HivePaymentType.Deposit:
        return RepositoryPaymentType.Deposit;
      case HivePaymentType.Withdraw:
        return RepositoryPaymentType.Withdraw;
    }
  }

  HivePaymentType repositoryToHivePaymentType(RepositoryPaymentType data) {
    switch (data) {
      case RepositoryPaymentType.Deposit:
        return HivePaymentType.Deposit;
      case RepositoryPaymentType.Withdraw:
        return HivePaymentType.Withdraw;
    }
  }

  List<HiveMarketCoin> coingeckoToHiveMarketCoinsList(CoingeckoMarketCoinsList data) {
    return data.coins
        .map((e) => HiveMarketCoin(
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ))
        .toList();
  }

  RepositoryMarketCoinsList hiveToRepositoryMarketCoinsList(List<HiveMarketCoin> data) {
    return RepositoryMarketCoinsList(
      coins: data
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

  RepositoryPaymentHistory hiveToRepositoryPaymentHistory(HivePaymentHistory data) {
    return RepositoryPaymentHistory(
      data: data.data
          .map((e) => RepositoryPayment(
                type: hiveToRepositoryPaymentType(e.type),
                amount: e.amount,
                numberOfCoins: e.numberOfCoins,
              ))
          .toList(),
    );
  }

  HivePayment repositoryToHivePayment(RepositoryPayment data) {
    return HivePayment(
      type: repositoryToHivePaymentType(data.type),
      amount: data.amount,
      numberOfCoins: data.numberOfCoins,
    );
  }

  RepositoryPortfolioCoinsList createRepositoryPortfolioCoinsList({
    required List<HiveMarketCoin> hiveMarketCoinsList,
    required Map<dynamic, HivePaymentHistory> hivePortfolioCoinsList,
  }) {
    List<RepositoryPortfolioCoin> repositoryPortfolioCoinsList = [];
    hivePortfolioCoinsList.forEach((key, value) {
      HiveMarketCoin hiveMarketCoin = hiveMarketCoinsList.firstWhere((element) => element.symbol == key);
      RepositoryPaymentHistory repositoryPaymentHistory = hiveToRepositoryPaymentHistory(value);
      repositoryPortfolioCoinsList.add(RepositoryPortfolioCoin(
        symbol: hiveMarketCoin.symbol,
        name: hiveMarketCoin.name,
        image: hiveMarketCoin.image,
        currentPrice: hiveMarketCoin.currentPrice,
        history: repositoryPaymentHistory,
      ));
    });
    return RepositoryPortfolioCoinsList(coins: repositoryPortfolioCoinsList);
  }
}
