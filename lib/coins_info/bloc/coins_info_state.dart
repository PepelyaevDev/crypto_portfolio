part of 'coins_info_bloc.dart';

enum CoinsInfoStatus { initial, loading, success, failure }

class CoinsInfoState extends Equatable {
  CoinsInfoState({
    this.status = CoinsInfoStatus.initial,
    CoinsList? coinsList,
  }) : coinsList = coinsList ?? CoinsList.empty;

  final CoinsInfoStatus status;
  final CoinsList coinsList;

  CoinsInfoState copyWith({
    CoinsInfoStatus? status,
    CoinsList? coinsList,
  }) {
    return CoinsInfoState(
      status: status ?? this.status,
      coinsList: coinsList ?? this.coinsList,
    );
  }

  @override
  List<Object?> get props => [status, coinsList];
}
