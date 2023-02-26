import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_coins_event.dart';
part 'market_coins_state.dart';
part 'market_coins_bloc.freezed.dart';

class MarketCoinsBloc extends Bloc<MarketCoinsEvent, MarketCoinsState> {
  final CoinsRepo _coinsRepo;
  MarketCoinsBloc(this._coinsRepo)
      : super(
          MarketCoinsState(
            coins: _coinsRepo.getCoinsLocal(),
          ),
        ) {
    on<MarketCoinsEvent>(
      (event, emit) => event.map(
        refreshData: (_) => _refreshData(emit),
      ),
      transformer: droppable(),
    );
  }

  Future<void> _refreshData(Emitter<MarketCoinsState> emit) async {
    final result = await _coinsRepo.getCoinsRemote();
    result.fold(
      (l) => MarketCoinsState(
        coins: _coinsRepo.getCoinsLocal(),
        error: l.errorMessage,
      ),
      (r) => MarketCoinsState(coins: r),
    );
  }
}
