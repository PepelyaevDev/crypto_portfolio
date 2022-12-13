import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';

class GetPortfolioCoinsListUC {
  GetPortfolioCoinsListUC({required this.paymentsRepository, required this.marketCoinsRepository});

  final PaymentsRepository paymentsRepository;
  final MarketCoinsRepository marketCoinsRepository;

  PortfolioCoinsList call() {
    final MarketCoinsList marketCoinsList = marketCoinsRepository.getMarketCoinsListLocal();
    final List<Payment> paymentList = paymentsRepository.getPaymentsList();

    List<PortfolioCoin> list = [];
    marketCoinsList.coins.forEach((marketCoin) {
      List<Payment> payments = paymentList.where((element) => element.symbol == marketCoin.symbol).toList();
      if (payments.isNotEmpty) {
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
        list.add(
          PortfolioCoin(
            symbol: marketCoin.symbol,
            name: marketCoin.name,
            image: marketCoin.image,
            currentPrice: marketCoin.currentPrice,
            buyPrice: moneyInvested / totalAmount,
            totalAmount: totalAmount,
            moneyInvested: moneyInvested,
            allCoinsCurrentPrice: totalAmount * marketCoin.currentPrice,
            history: payments,
          ),
        );
      }
    });
    return PortfolioCoinsList(coins: list);
  }
}
