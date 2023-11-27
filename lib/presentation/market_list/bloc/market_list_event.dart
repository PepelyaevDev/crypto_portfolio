part of 'market_list_bloc.dart';

@freezed
class MarketListEvent with _$MarketListEvent {
  const factory MarketListEvent.refreshData({Completer<void>? completer}) = _RefreshData;
}
