import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/screen_status.dart';
import 'package:crypto_portfolio/domain/usecase/get_portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/update_market_coins_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'portfolio_state.dart';

part 'portfolio_event.dart';

class PortfolioBloc extends Bloc<PortfolioBlocEvent, PortfolioBlocState> {
  PortfolioBloc({
    required this.updateMarketCoinsListUC,
    required this.getPortfolioCoinsListUC,
  }) : super(PortfolioBlocState()) {
    on<UpdatePortfolioCoinsListEvent>(_updateCoinsInfo, transformer: droppable());
  }

  final UpdateMarketCoinsListUC updateMarketCoinsListUC;
  final GetPortfolioCoinsListUC getPortfolioCoinsListUC;

  Future<void> _updateCoinsInfo(_, Emitter<PortfolioBlocState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      await updateMarketCoinsListUC.call();
      final PortfolioCoinsList portfolioCoinsList = getPortfolioCoinsListUC.call();
      emit(
        state.copyWith(
          status: ScreenStatus.success,
          portfolioCoinsList: portfolioCoinsList,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }
}
