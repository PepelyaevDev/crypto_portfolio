part of 'portfolio_coin_bloc.dart';

@freezed
class PortfolioCoinEvent with _$PortfolioCoinEvent {
  const factory PortfolioCoinEvent.update(Either<Failure, CoinsEntity> data) = _Update;
  const factory PortfolioCoinEvent.refreshData({Completer<void>? completer}) = _RefreshData;
  const factory PortfolioCoinEvent.deletePayment(PaymentEntity payment) = _DeletePayment;
  const factory PortfolioCoinEvent.deleteCoin(CoinId id) = _DeleteCoin;
}
