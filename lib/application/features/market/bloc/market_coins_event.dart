part of 'market_coins_bloc.dart';

@freezed
class MarketCoinsEvent with _$MarketCoinsEvent {
  const factory MarketCoinsEvent.refreshData() = _RefreshData;
}
