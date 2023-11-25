import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/common/utils/extensions/completer_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_coin_event.dart';
part 'market_coin_state.dart';
part 'market_coin_bloc.freezed.dart';

class MarketCoinBloc extends Bloc<MarketCoinEvent, MarketCoinState> {
  final MarketRepo _marketRepo;
  MarketCoinBloc(this._marketRepo) : super(const MarketCoinState(loading: true)) {
    on<_GetCoin>(_getCoin, transformer: droppable());
  }

  Future<void> _getCoin(_GetCoin event, Emitter<MarketCoinState> emit) async {
    emit(MarketCoinState(coin: state.coin, loading: true));
    final result = await _marketRepo.getMarketCoinById(id: event.id);
    result.fold(
      (error) => emit(MarketCoinState(coin: state.coin, error: error)),
      (marketCoin) => emit(MarketCoinState(coin: marketCoin)),
    );
    event.completer.close();
  }
}
