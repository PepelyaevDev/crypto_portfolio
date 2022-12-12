part of 'portfolio_bloc.dart';

class PortfolioBlocState extends Equatable {
  PortfolioBlocState({
    this.status = ScreenStatus.initial,
    PortfolioCoinsList? coinsList,
  }) : portfolioCoinsList = coinsList ?? PortfolioCoinsList(coins: []);

  final ScreenStatus status;
  final PortfolioCoinsList portfolioCoinsList;

  PortfolioBlocState copyWith({
    ScreenStatus? status,
    PortfolioCoinsList? portfolioCoinsList,
  }) {
    return PortfolioBlocState(
      status: status ?? this.status,
      coinsList: portfolioCoinsList ?? this.portfolioCoinsList,
    );
  }

  @override
  List<Object?> get props => [status, portfolioCoinsList];
}
