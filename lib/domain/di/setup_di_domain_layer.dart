import 'package:crypto_portfolio/domain/repository/coins_repository.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/delete_payment.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_list_local.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/get_portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/update_market_coins_list.dart';
import 'package:crypto_portfolio/main.dart';

void setupDiDomainLayer() {
  //UseCase
  getIt.registerSingleton<AddPaymentUC>(AddPaymentUC(coinsRepository: getIt.get<CoinsRepository>()));
  getIt.registerSingleton<DeletePaymentUC>(DeletePaymentUC(coinsRepository: getIt.get<CoinsRepository>()));
  getIt.registerSingleton<GetMarketCoinsListLocalUC>(
      GetMarketCoinsListLocalUC(coinsRepository: getIt.get<CoinsRepository>()));
  getIt.registerSingleton<GetPortfolioCoinsListUC>(
      GetPortfolioCoinsListUC(coinsRepository: getIt.get<CoinsRepository>()));
  getIt.registerSingleton<UpdateMarketCoinsListUC>(
      UpdateMarketCoinsListUC(coinsRepository: getIt.get<CoinsRepository>()));
}
