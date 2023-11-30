import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/common/utils/extensions/completer_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_list_event.dart';
part 'portfolio_list_state.dart';
part 'portfolio_list_bloc.freezed.dart';

class PortfolioListBloc extends Bloc<PortfolioListEvent, PortfolioListState> {
  final PortfolioRepo _portfolioRepo;
  late StreamSubscription<Either<Failure, CoinsEntity>> _coinsListener;
  PortfolioListBloc(this._portfolioRepo)
      : super(
          PortfolioListState(coins: _portfolioRepo.getCoinsLocal),
        ) {
    on<_Update>(_update, transformer: droppable());
    on<_RefreshData>(_refreshData, transformer: droppable());
    _coinsListener = _portfolioRepo.coinsSubject.stream.listen((event) {
      add(PortfolioListEvent.update(event));
    });
  }

  @override
  Future<void> close() async {
    _coinsListener.cancel();
    super.close();
  }

  Future<void> _update(_Update event, Emitter<PortfolioListState> emit) async {
    event.data.fold(
      (l) {
        if (l.time.newValue) {
          emit(PortfolioListState(coins: state.coins, error: l));
        }
      },
      (r) {
        if (r.updateTime.newValue) {
          emit(PortfolioListState(coins: r));
        }
      },
    );
  }

  Future<void> _refreshData(_RefreshData event, Emitter<PortfolioListState> emit) async {
    if (state.coins.list.isEmpty) return;
    emit(PortfolioListState(coins: state.coins, loading: true));
    await _portfolioRepo.updateCoinsMarketData();
    event.completer.close();
  }
}
