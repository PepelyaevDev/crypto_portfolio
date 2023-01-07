part of 'delete_payment_bloc.dart';

@freezed
class DeletePaymentEvent with _$DeletePaymentEvent {
  const factory DeletePaymentEvent.delete({
    required PaymentEntity payment,
  }) = _Delete;
}
