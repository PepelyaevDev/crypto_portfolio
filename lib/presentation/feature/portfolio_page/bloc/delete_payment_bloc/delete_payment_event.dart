part of 'delete_payment_bloc.dart';

@freezed
class DeletePaymentEvent with _$DeletePaymentEvent {
  const factory DeletePaymentEvent.delete({
    required Payment payment,
  }) = _Delete;
}
