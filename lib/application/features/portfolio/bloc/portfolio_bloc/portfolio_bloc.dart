import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_event.dart';

part 'portfolio_state.dart';

part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final CoinsRepo _coinsRepo;

  PortfolioBloc(this._coinsRepo) : super(const PortfolioState.initial()) {
    on<PortfolioEvent>(
      (event, emit) => event.map(
        update: (_) => _updateCoinsInfo(emit),
      ),
      transformer: droppable(),
    );
  }

  Future<void> _updateCoinsInfo(Emitter<PortfolioState> emit) async {
    emit(const PortfolioState.loading());
    final result = await _coinsRepo.getCoinsRemote();
    result.fold(
      (l) => emit(PortfolioState.failure(message: l.errorMessage)),
      (r) => emit(PortfolioState.success(coinsEntity: r)),
    );
  }
}
