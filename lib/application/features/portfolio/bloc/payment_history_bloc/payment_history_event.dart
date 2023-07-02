part of 'payment_history_bloc.dart';

@freezed
class PaymentHistoryEvent with _$PaymentHistoryEvent {
  const factory PaymentHistoryEvent.deletePayment(PaymentEntity payment) = _DeletePayment;
  const factory PaymentHistoryEvent.update(CoinsEntity coins) = _Update;
}
