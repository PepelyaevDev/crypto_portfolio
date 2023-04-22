import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_portfolio_coin_event.dart';
part 'detail_portfolio_coin_state.dart';
part 'detail_portfolio_coin_bloc.freezed.dart';

class DetailPortfolioCoinBloc extends Bloc<DetailPortfolioCoinEvent, DetailPortfolioCoinState> {
  final PortfolioRepo _portfolioRepo;
  final String _coinId;
  late StreamSubscription<Either<Failure, CoinsEntity>> _coinsListener;
  DetailPortfolioCoinBloc(this._portfolioRepo, this._coinId)
      : super(DetailPortfolioCoinState(
          coin: _portfolioRepo.getCoinsLocal().list.where((e) => e.id == _coinId).isEmpty
              ? null
              : _portfolioRepo.getCoinsLocal().list.firstWhere((e) => e.id == _coinId),
        )) {
    on<_Update>(_update, transformer: droppable());
    on<_RefreshData>(_refreshData, transformer: droppable());

    _coinsListener = _portfolioRepo.coinsSubject.stream.listen((event) {
      add(DetailPortfolioCoinEvent.update(event));
    });
  }

  @override
  Future<void> close() async {
    _coinsListener.cancel();
    super.close();
  }

  Future<void> _update(_Update event, Emitter<DetailPortfolioCoinState> emit) async {
    event.data.fold(
      (l) {
        if (l.dateTime.newValue) {
          emit(DetailPortfolioCoinState(coin: state.coin, error: l));
        }
      },
      (r) {
        if (r.updateTime.newValue) {
          final List<CoinEntity> coins = r.list.where((e) => e.id == _coinId).toList();
          coins.isEmpty
              ? emit(DetailPortfolioCoinState(coin: null))
              : emit(DetailPortfolioCoinState(coin: coins.first));
        }
      },
    );
  }

  Future<void> _refreshData(_, Emitter<DetailPortfolioCoinState> emit) async {
    if (_portfolioRepo.getCoinsLocal().list.where((e) => e.id == _coinId).isEmpty) {
      return;
    }
    emit(DetailPortfolioCoinState(coin: state.coin, loading: true));
    await _portfolioRepo.updateCoinMarketData(_coinId);
  }
}
