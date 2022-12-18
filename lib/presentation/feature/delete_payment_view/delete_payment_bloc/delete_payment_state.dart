part of 'delete_payment_bloc.dart';

class DeletePaymentBlocState extends Equatable {
  DeletePaymentBlocState({this.status = ScreenStatus.initial});

  final ScreenStatus status;

  DeletePaymentBlocState copyWith({ScreenStatus? status}) {
    return DeletePaymentBlocState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => [status];
}
