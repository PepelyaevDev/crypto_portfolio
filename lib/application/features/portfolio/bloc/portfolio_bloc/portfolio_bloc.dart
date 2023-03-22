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
    on<_Init>(_init, transformer: droppable());
    on<_RefreshData>(_refreshData, transformer: droppable());
    on<_UpdateHistory>(_updateHistory, transformer: droppable());
  }

  Future<void> _init(_, Emitter<PortfolioState> emit) async {
    await for (final e in _portfolioRepo.coinsSubject.stream) {
      e.fold(
        (l) => emit(PortfolioState(coins: state.coins, error: l.errorMessage)),
        (r) => emit(PortfolioState(coins: r)),
      );
    }
  }

  Future<void> _refreshData(_, __) async {
    await _portfolioRepo.updateCoinsPrice();
  }

  Future<void> _updateHistory(_UpdateHistory event, _) async {
    await _portfolioRepo.updateHistory(event.paymentEntity);
  }
}
