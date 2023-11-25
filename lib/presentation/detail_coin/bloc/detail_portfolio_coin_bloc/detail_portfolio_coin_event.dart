part of 'detail_portfolio_coin_bloc.dart';

@freezed
class DetailPortfolioCoinEvent with _$DetailPortfolioCoinEvent {
  const factory DetailPortfolioCoinEvent.update(Either<Failure, CoinsEntity> data) = _Update;
  const factory DetailPortfolioCoinEvent.refreshData({Completer<void>? completer}) = _RefreshData;
  const factory DetailPortfolioCoinEvent.deletePayment(PaymentEntity payment) = _DeletePayment;
  const factory DetailPortfolioCoinEvent.deleteCoin(CoinId id) = _DeleteCoin;
}
