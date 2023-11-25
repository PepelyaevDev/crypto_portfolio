part of 'market_coin_bloc.dart';

@freezed
class MarketCoinState with _$MarketCoinState {
  const factory MarketCoinState({
    CoinEntity? coin,
    @Default(false) bool loading,
    Failure? error,
  }) = _MarketCoinState;
}
