part of 'market_chart_bloc.dart';

@freezed
class MarketChartState with _$MarketChartState {
  const factory MarketChartState.loading() = _Loading;
  const factory MarketChartState.success(MarketChartEntity marketChart) = _Success;
  const factory MarketChartState.error(Failure error) = _Error;
}

extension MarketChartStateExtension on MarketChartState {
  bool get loadedState => maybeMap(
        loading: (_) => false,
        orElse: () => true,
      );

  Failure? get error => mapOrNull(error: (state) => state.error);
}
