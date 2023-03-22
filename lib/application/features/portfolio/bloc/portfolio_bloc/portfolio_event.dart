part of 'portfolio_bloc.dart';

@freezed
class PortfolioEvent with _$PortfolioEvent {
  const factory PortfolioEvent.init() = _Init;
  const factory PortfolioEvent.refreshData() = _RefreshData;
  const factory PortfolioEvent.updateHistory(PaymentEntity paymentEntity) = _UpdateHistory;
}
