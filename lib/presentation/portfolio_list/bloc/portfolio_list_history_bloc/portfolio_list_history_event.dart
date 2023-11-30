part of 'portfolio_list_history_bloc.dart';

@freezed
class PortfolioListHistoryEvent with _$PortfolioListHistoryEvent {
  const factory PortfolioListHistoryEvent.deletePayment(PaymentEntity payment) = _DeletePayment;
  const factory PortfolioListHistoryEvent.update(CoinsEntity coins) = _Update;
}
