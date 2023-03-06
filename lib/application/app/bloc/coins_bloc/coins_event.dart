part of 'coins_bloc.dart';

@freezed
class CoinsEvent with _$CoinsEvent {
  const factory CoinsEvent.refreshData() = _RefreshData;
  const factory CoinsEvent.updateHistory(
    PaymentEntity paymentEntity,
  ) = _UpdateHistory;
}
