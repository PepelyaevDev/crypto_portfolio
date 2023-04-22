import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';
part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final PortfolioRepo _portfolioRepo;
  late StreamSubscription<Either<Failure, CoinsEntity>> _coinsListener;
  PortfolioBloc(this._portfolioRepo)
      : super(PortfolioState(coins: _portfolioRepo.getCoinsLocal())) {
    on<_Update>(_update, transformer: droppable());
    on<_RefreshData>(_refreshData, transformer: droppable());
    _coinsListener = _portfolioRepo.coinsSubject.stream.listen((event) {
      add(PortfolioEvent.update(event));
    });
  }

  @override
  Future<void> close() async {
    _coinsListener.cancel();
    super.close();
  }

  Future<void> _update(_Update event, Emitter<PortfolioState> emit) async {
    event.data.fold(
      (l) {
        if (l.dateTime.newValue) {
          emit(PortfolioState(coins: state.coins, error: l));
        }
      },
      (r) {
        if (r.updateTime.newValue) {
          emit(PortfolioState(coins: r));
        }
      },
    );
  }

  Future<void> _refreshData(_, Emitter<PortfolioState> emit) async {
    if (state.coins.list.isEmpty) return;
    emit(PortfolioState(coins: state.coins, loading: true));
    await _portfolioRepo.updateCoinsPrice();
  }
}
