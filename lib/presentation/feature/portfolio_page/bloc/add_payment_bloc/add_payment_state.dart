part of 'add_payment_bloc.dart';

@freezed
class AddPaymentState with _$AddPaymentState {
  const factory AddPaymentState.initial(
    MarketCoinsList marketCoinsList,
  ) = _Initial;

  const factory AddPaymentState.loading() = _Loading;

  const factory AddPaymentState.success() = _Success;

  const factory AddPaymentState.failure() = _Failure;
}
