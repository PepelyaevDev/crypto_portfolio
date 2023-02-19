part of 'portfolio_bloc.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState.initial() = _Initial;

  const factory PortfolioState.loading() = _Loading;

  const factory PortfolioState.success({required CoinsEntity coinsEntity}) = _Success;

  const factory PortfolioState.failure({required String message}) = _Failure;
}
