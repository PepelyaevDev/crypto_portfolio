part of 'coins_info_cubit.dart';

enum CoinsInfoStatus { initial, loading, success, failure }

@JsonSerializable(explicitToJson: true)
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

  factory CoinsInfoState.fromJson(Map<String, dynamic> json) => _$CoinsInfoStateFromJson(json);

  Map<String, dynamic> toJson() => _$CoinsInfoStateToJson(this);

  @override
  List<Object?> get props => [status, coinsList];
}
