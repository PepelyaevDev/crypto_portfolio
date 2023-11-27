import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/common/utils/extensions/completer_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_list_event.dart';
part 'market_list_state.dart';
part 'market_list_bloc.freezed.dart';

class MarketListBloc extends Bloc<MarketListEvent, MarketListState> {
  final MarketRepo _marketRepo;
  MarketListBloc(this._marketRepo) : super(MarketListState(coins: _marketRepo.getCoinsLocal)) {
    on<_RefreshData>(_refreshData, transformer: droppable());
  }

  Future<void> _refreshData(_RefreshData event, Emitter<MarketListState> emit) async {
    emit(MarketListState(coins: state.coins, loading: true));
    final coins = await _marketRepo.getCoinsRemote();
    coins.fold(
      (l) => emit(MarketListState(coins: state.coins, error: l)),
      (r) => emit(MarketListState(coins: r)),
    );
    event.completer.close();
  }
}
