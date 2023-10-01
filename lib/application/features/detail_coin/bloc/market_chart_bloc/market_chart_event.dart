part of 'market_chart_bloc.dart';

@freezed
class MarketChartEvent with _$MarketChartEvent {
  const factory MarketChartEvent.setDistance(
    MarketChartDistance distance,
  ) = _SetDistance;
  const factory MarketChartEvent.refresh(
    MarketChartDistance distance,
    Completer<void> completer,
  ) = _Refresh;
}
