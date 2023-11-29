part of 'portfolio_coin_bloc.dart';

@freezed
class PortfolioCoinState with _$PortfolioCoinState {
  const factory PortfolioCoinState({
    required CoinEntity? coin,
    @Default(false) bool loading,
    Failure? error,
  }) = _PortfolioCoinState;
}
