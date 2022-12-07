import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/payment.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'portfolio_state.dart';

part 'portfolio_event.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  PortfolioBloc(this._coinsInfoRepository) : super(PortfolioState()) {
    on<UpdateCoinsInfo>(_updateCoinsInfo, transformer: droppable());
  }

  final CoinsInfoRepositoryClient _coinsInfoRepository;

  Future<void> _updateCoinsInfo(_, Emitter<PortfolioState> emit) async {
    emit(state.copyWith(status: CoinsInfoStatus.loading));
    try {
      final CoinsList coinsList = CoinsList.fromRepository(
        await _coinsInfoRepository.getMarketCoinsList(),
      );
      emit(
        state.copyWith(
          status: CoinsInfoStatus.success,
          coinsList: coinsList,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CoinsInfoStatus.failure));
    }
  }
}
