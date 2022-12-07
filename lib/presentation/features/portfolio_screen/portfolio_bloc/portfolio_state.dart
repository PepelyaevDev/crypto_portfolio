part of 'portfolio_bloc.dart';

enum PortfolioScreenStatus { initial, loading, success, failure }

class PortfolioState extends Equatable {
  PortfolioState({
    this.status = PortfolioScreenStatus.initial,
    PortfolioCoinsList? coinsList,
  }) : coinsList = coinsList ?? PortfolioCoinsList(coins: []);

  final PortfolioScreenStatus status;
  final PortfolioCoinsList coinsList;

  PortfolioState copyWith({
    PortfolioScreenStatus? status,
    PortfolioCoinsList? coinsList,
  }) {
    return PortfolioState(
      status: status ?? this.status,
      coinsList: coinsList ?? this.coinsList,
    );
  }

  @override
  List<Object?> get props => [status, coinsList];
}
