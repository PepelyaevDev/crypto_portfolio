import 'package:crypto_portfolio/domain/entity/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/payment.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';

class GetPortfolioCoinsListUC {
  GetPortfolioCoinsListUC({required this.coinsRepository});

  final CoinsRepository coinsRepository;

  PortfolioCoinsList call() {
    final MarketCoinsList marketCoinsList = coinsRepository.getMarketCoinsListLocal();
    final List<Payment> paymentList = coinsRepository.getPaymentsList();

    List<PortfolioCoin> list = [];

    marketCoinsList.coins.forEach((marketCoin) {
      final List<Payment> payments = paymentList.where((element) => element.symbol == marketCoin.symbol).toList();
      if (payments.isNotEmpty) {
        late final double buyPrice;
        late final double allCoinsCurrentPrice;
        double totalAmount = 0;
        double moneyInvested = 0;
        payments.forEach((element) {
          switch (element.type) {
            case PaymentType.Withdraw:
              totalAmount = totalAmount - element.numberOfCoins;
              moneyInvested = moneyInvested - element.amount;
              break;
            case PaymentType.Deposit:
              totalAmount = totalAmount + element.numberOfCoins;
              moneyInvested = moneyInvested - element.amount;
              break;
          }
        });
        buyPrice = moneyInvested / totalAmount;
        allCoinsCurrentPrice = totalAmount * marketCoin.currentPrice;
        list.add(
          PortfolioCoin(
            symbol: marketCoin.symbol,
            name: marketCoin.name,
            image: marketCoin.image,
            currentPrice: marketCoin.currentPrice,
            buyPrice: buyPrice,
            totalAmount: totalAmount,
            moneyInvested: moneyInvested,
            allCoinsCurrentPrice: allCoinsCurrentPrice,
            history: payments,
          ),
        );
      }
    });
    return PortfolioCoinsList(coins: list);
  }
}
