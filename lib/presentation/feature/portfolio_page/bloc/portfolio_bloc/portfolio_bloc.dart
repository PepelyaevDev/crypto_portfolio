import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/portfolio_coin_entity.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/update_market_coins_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/get_portfolio_coins_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_event.dart';

part 'portfolio_state.dart';

part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final UpdateMarketCoinsUsecase updateMarketCoinsListUC;
  final GetPortfolioCoinsUsecase getPortfolioCoinsListUC;

  PortfolioBloc({
    required this.updateMarketCoinsListUC,
    required this.getPortfolioCoinsListUC,
  }) : super(const PortfolioState.initial()) {
    on<PortfolioEvent>(
      (event, emit) => event.map(
        update: (_) => _updateCoinsInfo(emit),
      ),
      transformer: droppable(),
    );
  }

  Future<void> _updateCoinsInfo(Emitter<PortfolioState> emit) async {
    emit(const PortfolioState.loading());
    try {
      await updateMarketCoinsListUC.call();
      final List<PortfolioCoinEntity> portfolioCoinsList = getPortfolioCoinsListUC.call();
      emit(PortfolioState.success(portfolioCoinsList: portfolioCoinsList));
    } catch (e) {
      emit(const PortfolioState.failure());
    }
  }
}
