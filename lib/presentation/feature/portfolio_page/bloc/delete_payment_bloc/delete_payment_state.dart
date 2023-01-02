part of 'delete_payment_bloc.dart';

@freezed
class DeletePaymentState with _$DeletePaymentState {
  const factory DeletePaymentState.initial() = _Initial;

  const factory DeletePaymentState.loading() = _Loading;

  const factory DeletePaymentState.success() = _Success;

  const factory DeletePaymentState.failure() = _Failure;
}
