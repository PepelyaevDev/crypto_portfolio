part of 'watchlist_bloc.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState({
    required List<CoinId> ids,
    required CoinsEntity coins,
    @Default(false) bool loading,
    Failure? error,
  }) = _WatchlistState;
}
