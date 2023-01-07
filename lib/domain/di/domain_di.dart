import 'package:crypto_portfolio/domain/repo/market_coin_repo.dart';
import 'package:crypto_portfolio/domain/repo/payment_repo.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/delete_payment_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_local_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/get_portfolio_coins_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/update_market_coins_usecase.dart';
import 'package:crypto_portfolio/main.dart';

class DomainDi {
  static void call() {
    //UseCase
    getIt.registerSingleton<AddPaymentUsecase>(
        AddPaymentUsecase(paymentsRepository: getIt.get<PaymentRepo>()));
    getIt.registerSingleton<DeletePaymentUsecase>(
        DeletePaymentUsecase(paymentsRepository: getIt.get<PaymentRepo>()));
    getIt.registerSingleton<GetMarketCoinsLocalUsecase>(
        GetMarketCoinsLocalUsecase(marketCoinsRepository: getIt.get<MarketCoinRepo>()));
    getIt.registerSingleton<GetPortfolioCoinsUsecase>(GetPortfolioCoinsUsecase(
      paymentsRepository: getIt.get<PaymentRepo>(),
      marketCoinsRepository: getIt.get<MarketCoinRepo>(),
    ));
    getIt.registerSingleton<UpdateMarketCoinsUsecase>(
        UpdateMarketCoinsUsecase(marketCoinsRepository: getIt.get<MarketCoinRepo>()));
  }
}
