part of 'portfolio_bloc.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState({
    required CoinsEntity coins,
    String? error,
  }) = _PortfolioState;
}
