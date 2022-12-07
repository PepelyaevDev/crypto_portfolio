part of 'add_payment_bloc.dart';

abstract class AddPaymentBloEvent {}

class AddPaymentEvent extends AddPaymentBloEvent {
  final Payment payment;

  AddPaymentEvent({required this.payment});
}
