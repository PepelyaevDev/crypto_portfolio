import 'package:crypto_portfolio/domain/usecase/add_payment.dart';
import 'package:crypto_portfolio/domain/usecase/delete_payment.dart';
import 'package:crypto_portfolio/domain/usecase/get_market_coins_list_local.dart';
import 'package:crypto_portfolio/domain/usecase/get_portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/update_market_coins_list.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/features/add_payment_screen/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/features/delete_payment_view/delete_payment_bloc/delete_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/features/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';

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
