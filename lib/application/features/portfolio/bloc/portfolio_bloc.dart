import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';
part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final PortfolioRepo _portfolioRepo;
  PortfolioBloc(this._portfolioRepo)
      : super(PortfolioState(coins: _portfolioRepo.getCoinsLocal())) {
    on<_RefreshData>(_refreshData, transformer: droppable());
    on<_UpdateHistory>(_updateHistory, transformer: droppable());
  }

  Future<void> _refreshData(_, Emitter<PortfolioState> emit) async {
    emit(PortfolioState(coins: state.coins, loading: true));
    final coins = await _portfolioRepo.getCoinsRemote();
    coins.fold(
      (l) => emit(PortfolioState(coins: state.coins, error: l.errorMessage)),
      (r) => emit(PortfolioState(coins: r)),
    );
  }

  Future<void> _updateHistory(_UpdateHistory event, Emitter<PortfolioState> emit) async {
    final coins = await _portfolioRepo.updateHistory(event.paymentEntity);
    emit(PortfolioState(coins: coins));
  }
}
