part of 'add_payment_bloc.dart';

@freezed
class AddPaymentState with _$AddPaymentState {
  const factory AddPaymentState.initial() = _Initial;
  const factory AddPaymentState.loading() = _Loading;
  const factory AddPaymentState.success(CoinEntity coin) = _Success;
  const factory AddPaymentState.error(String error) = _Error;
}
