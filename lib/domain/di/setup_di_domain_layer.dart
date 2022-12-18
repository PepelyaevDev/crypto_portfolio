import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/delete_payment.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_list_local.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/get_portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/update_market_coins_list.dart';
import 'package:crypto_portfolio/main.dart';

void setupDiDomainLayer() {
  //UseCase
  getIt.registerSingleton<AddPaymentUC>(
      AddPaymentUC(paymentsRepository: getIt.get<PaymentsRepository>()));
  getIt.registerSingleton<DeletePaymentUC>(
      DeletePaymentUC(paymentsRepository: getIt.get<PaymentsRepository>()));
  getIt.registerSingleton<GetMarketCoinsListLocalUC>(
      GetMarketCoinsListLocalUC(marketCoinsRepository: getIt.get<MarketCoinsRepository>()));
  getIt.registerSingleton<GetPortfolioCoinsListUC>(GetPortfolioCoinsListUC(
    paymentsRepository: getIt.get<PaymentsRepository>(),
    marketCoinsRepository: getIt.get<MarketCoinsRepository>(),
  ));
  getIt.registerSingleton<UpdateMarketCoinsListUC>(
      UpdateMarketCoinsListUC(marketCoinsRepository: getIt.get<MarketCoinsRepository>()));
}
