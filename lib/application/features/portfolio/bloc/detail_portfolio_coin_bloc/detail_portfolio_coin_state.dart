part of 'detail_portfolio_coin_bloc.dart';

@freezed
class DetailPortfolioCoinState with _$DetailPortfolioCoinState {
  const factory DetailPortfolioCoinState.loading() = _Loading;
  const factory DetailPortfolioCoinState.success(CoinEntity coin) = _Success;
  const factory DetailPortfolioCoinState.error(Failure error) = _Error;
}
