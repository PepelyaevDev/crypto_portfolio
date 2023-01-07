import 'package:crypto_portfolio/domain/entity/market_coins/market_coin_entity.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_type_entity.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/portfolio_coin_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_coin_repo.dart';
import 'package:crypto_portfolio/domain/repo/payment_repo.dart';

class GetPortfolioCoinsUsecase {
  GetPortfolioCoinsUsecase({required this.paymentsRepository, required this.marketCoinsRepository});

  final PaymentRepo paymentsRepository;
  final MarketCoinRepo marketCoinsRepository;

  List<PortfolioCoinEntity> call() {
    final List<MarketCoinEntity> allMarketCoins = marketCoinsRepository.getMarketCoinsLocal();
    final List<PaymentEntity> allPayments = paymentsRepository.getPayments();

    List<PortfolioCoinEntity> allPortfolioCoins = [];
    for (var marketCoin in allMarketCoins) {
      List<PaymentEntity> selectedCoinPayments =
          allPayments.where((payment) => payment.symbol == marketCoin.symbol).toList();
      if (selectedCoinPayments.isNotEmpty) {
        double totalAmount = 0;
        double moneyInvested = 0;
        for (var payment in selectedCoinPayments) {
          switch (payment.type.name) {
            case Withdraw.title:
              totalAmount = totalAmount - payment.numberOfCoins;
              moneyInvested = moneyInvested - payment.amount;
              break;
            case Deposit.title:
              totalAmount = totalAmount + payment.numberOfCoins;
              moneyInvested = moneyInvested - payment.amount;
              break;
          }
        }
        allPortfolioCoins.add(
          PortfolioCoinEntity(
            symbol: marketCoin.symbol,
            name: marketCoin.name,
            image: marketCoin.image,
            currentPrice: marketCoin.currentPrice,
            buyPrice: moneyInvested / totalAmount,
            totalAmount: totalAmount,
            moneyInvested: moneyInvested,
            allCoinsCurrentPrice: totalAmount * marketCoin.currentPrice,
            history: selectedCoinPayments,
          ),
        );
      }
    }
    return allPortfolioCoins;
  }
}
