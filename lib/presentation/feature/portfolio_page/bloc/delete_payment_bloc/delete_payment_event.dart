part of 'delete_payment_bloc.dart';

@freezed
class DeletePaymentEvent with _$DeletePaymentEvent {
  const factory DeletePaymentEvent.delete(Payment payment) = _Delete;
}
