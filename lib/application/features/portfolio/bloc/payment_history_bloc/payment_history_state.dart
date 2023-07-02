part of 'payment_history_bloc.dart';

@freezed
class PaymentHistoryState with _$PaymentHistoryState {
  const factory PaymentHistoryState({required CoinsEntity coins}) = _PaymentHistoryState;
}
