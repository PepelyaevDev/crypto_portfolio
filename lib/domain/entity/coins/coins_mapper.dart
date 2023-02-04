import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

class CoinsMapper {
  static CoinsEntity firstInit({required List<GeckoCoinDTO> geckoCoins}) {
    List<CoinEntity> coinsList = [];
    for (var coin in geckoCoins) {
      coinsList.add(
        CoinEntity(
          symbol: coin.symbol,
          name: coin.name,
          image: coin.image,
          currentPrice: coin.currentPrice,
          marketCap: coin.marketCap,
          buyPrice: 0,
          totalAmount: 0,
          moneyInvested: 0,
          allCoinsCurrentPrice: 0,
          history: [],
        ),
      );
    }
    return CoinsEntity(coins: coinsList, updateTime: DateTime.now());
  }

  static CoinsEntity updateMarketData({
    required List<GeckoCoinDTO> geckoCoins,
    required CoinsEntity coinsEntity,
  }) {
    List<CoinEntity> coinsList = [];
    for (var coin in coinsEntity.coins) {
      ///TODO: алгорит может ломаться если одни монеты ушли а другие пришли из топ 100
      coinsList.add(
        coin.copyWith(
          currentPrice: geckoCoins.firstWhere((e) => e.symbol == coin.symbol).currentPrice,
        ),
      );
    }
    return CoinsEntity(coins: coinsList, updateTime: DateTime.now());
    // List<PortfolioCoinEntity> allPortfolioCoins = [];
    // for (var marketCoin in allMarketCoins) {
    //   List<HivePaymentDTO> selectedCoinPayments =
    //       allPayments.where((payment) => payment.symbol == marketCoin.symbol).toList();
    //   if (selectedCoinPayments.isNotEmpty) {
    //     double totalAmount = 0;
    //     double moneyInvested = 0;
    //     for (var payment in selectedCoinPayments) {
    //       switch (payment.type.getPaymentType()) {
    //         case PaymentTypeEntity.withdraw:
    //           totalAmount = totalAmount - payment.numberOfCoins;
    //           moneyInvested = moneyInvested - payment.amount;
    //           break;
    //         case PaymentTypeEntity.deposit:
    //           totalAmount = totalAmount + payment.numberOfCoins;
    //           moneyInvested = moneyInvested + payment.amount;
    //           break;
    //       }
    //     }
    //     allPortfolioCoins.add(
    //       PortfolioCoinEntity(
    //         symbol: marketCoin.symbol,
    //         name: marketCoin.name,
    //         image: marketCoin.image,
    //         currentPrice: marketCoin.currentPrice,
    //         buyPrice: moneyInvested / totalAmount,
    //         totalAmount: totalAmount,
    //         moneyInvested: moneyInvested,
    //         allCoinsCurrentPrice: totalAmount * marketCoin.currentPrice,
    //         history: selectedCoinPayments.map((e) => e.toEntity()).toList(),
    //       ),
    //     );
    //   }
    // }
    // return PortfolioCoinsEntity(coins: allPortfolioCoins, updateTime: updateTime);
  }
}
