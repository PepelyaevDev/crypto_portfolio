part of 'portfolio_list_bloc.dart';

@freezed
class PortfolioListState with _$PortfolioListState {
  const factory PortfolioListState({
    required CoinsEntity coins,
    @Default(false) bool loading,
    Failure? error,
  }) = _PortfolioListState;
}
