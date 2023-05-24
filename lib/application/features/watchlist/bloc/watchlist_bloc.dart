import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/watchlist_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_event.dart';
part 'watchlist_state.dart';
part 'watchlist_bloc.freezed.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final WatchlistRepo _watchlistRepo;
  WatchlistBloc(this._watchlistRepo)
      : super(WatchlistState(
          idsList: _watchlistRepo.getCoinsIds(),
          coins: _watchlistRepo.getCoinsLocal(),
        )) {
    on<_Update>(_update);
    on<_Refresh>(_refresh, transformer: droppable());
  }

  void _update(_Update event, Emitter<WatchlistState> emit) async {
    final List<String> newList = await _watchlistRepo.updateCoinsIds(event.id);
    emit(WatchlistState(idsList: newList, coins: state.coins));
  }

  void _refresh(_Refresh event, Emitter<WatchlistState> emit) async {
    if (state.idsList.isEmpty && state.coins.list.isEmpty) {
      return;
    }
    emit(
      WatchlistState(
        idsList: state.idsList,
        coins: state.coins,
        loading: true,
      ),
    );
    final result = await _watchlistRepo.getCoinsRemote();
    result.fold(
      (l) {
        emit(
          WatchlistState(
            idsList: state.idsList,
            coins: state.coins,
            error: l,
          ),
        );
      },
      (r) {
        emit(
          WatchlistState(
            idsList: state.idsList,
            coins: r,
          ),
        );
      },
    );
  }
}
