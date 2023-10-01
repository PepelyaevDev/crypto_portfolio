part of 'portfolio_bloc.dart';

@freezed
class PortfolioEvent with _$PortfolioEvent {
  const factory PortfolioEvent.update(Either<Failure, CoinsEntity> data) = _Update;
  const factory PortfolioEvent.refreshData({Completer<void>? completer}) = _RefreshData;
}
