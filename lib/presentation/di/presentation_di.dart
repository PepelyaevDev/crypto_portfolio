import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/delete_payment_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_local_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/get_portfolio_coins_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/update_market_coins_usecase.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/delete_payment_bloc/delete_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/portfolio_bloc/portfolio_bloc.dart';

class PresentationDi {
  static void call() {
    //Bloc
    getIt.registerFactory<PortfolioBloc>(
          () => PortfolioBloc(
        updateMarketCoinsListUC: getIt.get<UpdateMarketCoinsUsecase>(),
        getPortfolioCoinsListUC: getIt.get<GetPortfolioCoinsUsecase>(),
      ),
    );
    getIt.registerFactory<AddPaymentBloc>(
          () => AddPaymentBloc(
        getMarketCoinsListLocalUC: getIt.get<GetMarketCoinsLocalUsecase>(),
        addPaymentUC: getIt.get<AddPaymentUsecase>(),
      ),
    );
    getIt.registerFactory<DeletePaymentBloc>(
          () => DeletePaymentBloc(
        deletePaymentUC: getIt.get<DeletePaymentUsecase>(),
      ),
    );
  }
}

