part of 'market_coins_bloc.dart';

@freezed
class MarketCoinsState with _$MarketCoinsState {
  const factory MarketCoinsState({
    required CoinsEntity coins,
    String? error,
  }) = _MarketCoinsState;
}
