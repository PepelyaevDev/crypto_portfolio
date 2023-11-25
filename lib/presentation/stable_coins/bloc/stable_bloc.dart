import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'stable_event.dart';
part 'stable_state.dart';

class StableBloc extends Bloc<StableEvent, StableState> {
  final MarketRepo _marketRepo;
  StableBloc(this._marketRepo) : super(StableInitial()) {
    on<_Refresh>(_refresh, transformer: droppable());
  }

  void _refresh(_Refresh event, Emitter<StableState> emit) async {
    if (state is StableSuccess) return;
    emit(StableInitial());
    final result = await _marketRepo.getStableCoins();
    result.fold(
      (l) => emit(StableFailure(failure: l)),
      (r) => emit(StableSuccess(coins: r)),
    );
  }
}
