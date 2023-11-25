part of 'detail_portfolio_coin_bloc.dart';

@freezed
class DetailPortfolioCoinState with _$DetailPortfolioCoinState {
  const factory DetailPortfolioCoinState({
    required CoinEntity? coin,
    @Default(false) bool loading,
    Failure? error,
  }) = _DetailPortfolioCoinState;
}
