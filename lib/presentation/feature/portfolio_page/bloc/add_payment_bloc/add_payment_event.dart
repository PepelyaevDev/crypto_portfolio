part of 'add_payment_bloc.dart';

@freezed
class AddPaymentEvent with _$AddPaymentEvent {
  const factory AddPaymentEvent.add(Payment payment) = _Add;
}
