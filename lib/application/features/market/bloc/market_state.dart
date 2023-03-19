part of 'market_bloc.dart';

@freezed
class MarketState with _$MarketState {
  const factory MarketState({
    required CoinsEntity coins,
    @Default(false) bool loading,
    String? error,
  }) = _MarketState;
}
