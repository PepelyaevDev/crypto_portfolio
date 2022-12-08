part of 'add_payment_bloc.dart';

abstract class AddPaymentBlocEvent {}

class AddPaymentEvent extends AddPaymentBlocEvent {
  final Payment payment;

  AddPaymentEvent({required this.payment});
}
