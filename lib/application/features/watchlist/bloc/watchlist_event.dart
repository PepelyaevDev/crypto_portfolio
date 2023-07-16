part of 'watchlist_bloc.dart';

@freezed
class WatchlistEvent with _$WatchlistEvent {
  const factory WatchlistEvent.update(String symbol) = _Update;
  const factory WatchlistEvent.refresh() = _Refresh;
}
