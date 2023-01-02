import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/portfolio_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/update_market_coins_list.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/get_portfolio_coins_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_event.dart';

part 'portfolio_state.dart';

part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final UpdateMarketCoinsListUC updateMarketCoinsListUC;
  final GetPortfolioCoinsListUC getPortfolioCoinsListUC;

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
      final PortfolioCoinsList portfolioCoinsList = getPortfolioCoinsListUC.call();
      emit(PortfolioState.success(portfolioCoinsList));
    } catch (e) {
      emit(const PortfolioState.failure());
    }
  }
}
