part of 'portfolio_list_bloc.dart';

@freezed
class PortfolioListEvent with _$PortfolioListEvent {
  const factory PortfolioListEvent.update(Either<Failure, CoinsEntity> data) = _Update;
  const factory PortfolioListEvent.refreshData({Completer<void>? completer}) = _RefreshData;
}
