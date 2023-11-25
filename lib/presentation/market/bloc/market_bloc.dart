import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/common/utils/extensions/completer_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_event.dart';
part 'market_state.dart';
part 'market_bloc.freezed.dart';

class MarketBloc extends Bloc<MarketEvent, MarketState> {
  final MarketRepo _marketRepo;
  MarketBloc(this._marketRepo) : super(MarketState(coins: _marketRepo.getCoinsLocal)) {
    on<_RefreshData>(_refreshData, transformer: droppable());
  }

  Future<void> _refreshData(_RefreshData event, Emitter<MarketState> emit) async {
    emit(MarketState(coins: state.coins, loading: true));
    final coins = await _marketRepo.getCoinsRemote();
    coins.fold(
      (l) => emit(MarketState(coins: state.coins, error: l)),
      (r) => emit(MarketState(coins: r)),
    );
    event.completer.close();
  }
}
