part of 'market_bloc.dart';

@freezed
class MarketEvent with _$MarketEvent {
  const factory MarketEvent.refreshData({Completer<void>? completer}) = _RefreshData;
}
