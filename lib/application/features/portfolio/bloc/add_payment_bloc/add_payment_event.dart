part of 'add_payment_bloc.dart';

@freezed
class AddPaymentEvent with _$AddPaymentEvent {
  const factory AddPaymentEvent.getCoin(String? symbol) = _GetCoin;
  const factory AddPaymentEvent.clear() = _Clear;
  const factory AddPaymentEvent.updateHistory({
    required CoinEntity coin,
    required PaymentEntity paymentEntity,
  }) = _UpdateHistory;
}
