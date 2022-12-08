import 'package:crypto_portfolio/domain/repository/coins_repository.dart';
import 'package:crypto_portfolio/domain/usecase/add_payment.dart';
import 'package:crypto_portfolio/domain/usecase/delete_payment.dart';
import 'package:crypto_portfolio/domain/usecase/get_market_coins_list_local.dart';
import 'package:crypto_portfolio/domain/usecase/get_portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/update_market_coins_list.dart';
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
