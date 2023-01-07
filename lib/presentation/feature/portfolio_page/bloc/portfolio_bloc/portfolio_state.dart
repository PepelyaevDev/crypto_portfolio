part of 'portfolio_bloc.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState.initial() = _Initial;

  const factory PortfolioState.loading() = _Loading;

  const factory PortfolioState.success({
    required List<PortfolioCoinEntity> portfolioCoinsList,
  }) = _Success;

  const factory PortfolioState.failure() = _Failure;
}
