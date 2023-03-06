import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_event.dart';
part 'coins_state.dart';
part 'coins_bloc.freezed.dart';

class CoinsBloc extends Bloc<CoinsEvent, CoinsState> {
  final CoinsRepo _coinsRepo;
  CoinsBloc(this._coinsRepo) : super(CoinsState(coins: _coinsRepo.getCoinsLocal())) {
    on<CoinsEvent>(
      (event, emit) => event.map(
          refreshData: (_) => _refreshData(emit),
          updateHistory: (event) => _updateHistory(emit, event.paymentEntity)),
      transformer: droppable(),
    );
  }

  Future<void> _refreshData(Emitter<CoinsState> emit) async {
    emit(CoinsState(coins: state.coins, loading: true));
    final coins = await _coinsRepo.getCoinsRemote();
    coins.fold(
      (l) => emit(CoinsState(coins: state.coins, error: l.errorMessage)),
      (r) => emit(CoinsState(coins: r)),
    );
  }

  Future<void> _updateHistory(Emitter<CoinsState> emit, PaymentEntity paymentEntity) async {
    final coins = await _coinsRepo.updateHistory(paymentEntity);
    emit(CoinsState(coins: coins));
  }
}
