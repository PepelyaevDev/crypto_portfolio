part of 'delete_payment_bloc.dart';

abstract class DeletePaymentBlocEvent {}

class DeletePaymentEvent extends DeletePaymentBlocEvent {
  final Payment payment;

  DeletePaymentEvent({required this.payment});
}
