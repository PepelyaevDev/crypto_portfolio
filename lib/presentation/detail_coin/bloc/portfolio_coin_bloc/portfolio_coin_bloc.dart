import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/common/utils/extensions/completer_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/get_coin_by_id.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_coin_event.dart';
part 'portfolio_coin_state.dart';
part 'portfolio_coin_bloc.freezed.dart';

class PortfolioCoinBloc extends Bloc<PortfolioCoinEvent, PortfolioCoinState> {
  final PortfolioRepo _portfolioRepo;
  final CoinId _id;
  late StreamSubscription<Either<Failure, CoinsEntity>> _coinsListener;
  PortfolioCoinBloc(this._portfolioRepo, this._id)
      : super(PortfolioCoinState(
          coin: CoinsExtension.getCoinById(_portfolioRepo.getCoinsLocal, _id),
        )) {
    on<_Update>(_update, transformer: droppable());
    on<_RefreshData>(_refreshData, transformer: droppable());
    on<_DeletePayment>(_deletePayment, transformer: droppable());
    on<_DeleteCoin>(_deleteCoin, transformer: droppable());
    _coinsListener = _portfolioRepo.coinsSubject.stream.listen((event) {
      add(PortfolioCoinEvent.update(event));
    });
  }

  void _deletePayment(_DeletePayment event, Emitter<PortfolioCoinState> emit) =>
      _portfolioRepo.updateHistory(event.payment);

  void _deleteCoin(_DeleteCoin event, Emitter<PortfolioCoinState> emit) =>
      _portfolioRepo.deleteCoin(event.id);

  Future<void> _update(_Update event, Emitter<PortfolioCoinState> emit) async {
    event.data.fold(
      (l) {
        if (l.time.newValue) {
          emit(PortfolioCoinState(coin: state.coin, error: l));
        }
      },
      (r) {
        if (r.updateTime.newValue) {
          final coin = CoinsExtension.getCoinById(r, _id);
          emit(PortfolioCoinState(coin: coin));
        }
      },
    );
  }

  Future<void> _refreshData(_RefreshData event, Emitter<PortfolioCoinState> emit) async {
    if (_portfolioRepo.getCoinsLocal.list.where((e) => e.id == _id).isEmpty) {
      return;
    }
    emit(PortfolioCoinState(coin: state.coin, loading: true));
    await _portfolioRepo.updateCoinsMarketData();
    event.completer.close();
  }

  @override
  Future<void> close() async {
    _coinsListener.cancel();
    super.close();
  }
}
