import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/delete_payment.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_list_local.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/get_portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/update_market_coins_list.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/delete_payment_bloc/delete_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/portfolio_bloc/portfolio_bloc.dart';

void setupDiPresentationLayer() {
  //Bloc
  getIt.registerFactory<PortfolioBloc>(
    () => PortfolioBloc(
      updateMarketCoinsListUC: getIt.get<UpdateMarketCoinsListUC>(),
      getPortfolioCoinsListUC: getIt.get<GetPortfolioCoinsListUC>(),
    ),
  );
  getIt.registerFactory<AddPaymentBloc>(
    () => AddPaymentBloc(
      getMarketCoinsListLocalUC: getIt.get<GetMarketCoinsListLocalUC>(),
      addPaymentUC: getIt.get<AddPaymentUC>(),
    ),
  );
  getIt.registerFactory<DeletePaymentBloc>(
    () => DeletePaymentBloc(
      deletePaymentUC: getIt.get<DeletePaymentUC>(),
    ),
  );
}
