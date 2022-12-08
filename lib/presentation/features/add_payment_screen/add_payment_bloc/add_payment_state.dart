part of 'add_payment_bloc.dart';

class AddPaymentBlocState extends Equatable {
  AddPaymentBlocState({this.status = ScreenStatus.initial, required this.marketCoinsList});

  final ScreenStatus status;
  final MarketCoinsList marketCoinsList;

  AddPaymentBlocState copyWith({ScreenStatus? status}) {
    return AddPaymentBlocState(status: status ?? this.status, marketCoinsList: this.marketCoinsList);
  }

  @override
  List<Object?> get props => [status];
}
