part of 'market_list_bloc.dart';

@freezed
class MarketListState with _$MarketListState {
  const factory MarketListState({
    required CoinsEntity coins,
    @Default(false) bool loading,
    Failure? error,
  }) = _MarketListState;
}
