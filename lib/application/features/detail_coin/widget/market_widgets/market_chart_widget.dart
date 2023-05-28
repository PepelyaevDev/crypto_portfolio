import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/features/detail_coin/bloc/market_chart_bloc/market_chart_bloc.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/extensions/get_chart_data.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MarketChartWidget extends StatelessWidget {
  final void Function(TrackballArgs, MarketChartState) onTrackballPositionChanging;
  final VoidCallback onTrackballDispose;

  const MarketChartWidget({
    required this.onTrackballPositionChanging,
    required this.onTrackballDispose,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: BlocBuilder<MarketChartBloc, MarketChartState>(
          builder: (context, state) {
            return state.map(
              success: (state) => SfCartesianChart(
                onTrackballPositionChanging: (args) {
                  onTrackballPositionChanging(args, state);
                },
                trackballBehavior: TrackballBehavior(
                  activationMode: ActivationMode.singleTap,
                  enable: true,
                  markerSettings: TrackballMarkerSettings(
                    markerVisibility: TrackballVisibilityMode.visible,
                  ),
                  tooltipSettings: InteractiveTooltip(
                    arrowLength: 0,
                    arrowWidth: 0,
                  ),
                  builder: (_, TrackballDetails details) {
                    return _CustomTrackballWidget(
                      onDispose: onTrackballDispose,
                    );
                  },
                ),
                primaryXAxis: DateTimeAxis(
                  axisLabelFormatter: (axisLabelRenderArgs) {
                    final String text = DateFormat(
                      state.marketChart.dateFormatPattern(),
                    ).format(
                      DateTime.fromMillisecondsSinceEpoch(
                        axisLabelRenderArgs.value.toInt(),
                      ),
                    );
                    return ChartAxisLabel(text, AppStyles.normal12);
                  },
                ),
                series: [
                  LineSeries(
                    color: AppColors.blue,
                    dataSource: <MarketChartPriceEntity>[...state.marketChart.prices],
                    xValueMapper: (price, _) => price.time,
                    yValueMapper: (price, _) => price.price,
                  )
                ],
              ),
              loading: (_) => Stack(
                children: [
                  SfCartesianChart(),
                  Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
              error: (_) => SfCartesianChart(),
            );
          },
        ),
      ),
    );
  }
}

class _CustomTrackballWidget extends StatefulWidget {
  final VoidCallback onDispose;
  _CustomTrackballWidget({required this.onDispose});
  @override
  State<_CustomTrackballWidget> createState() => _CustomTrackballWidgetState();
}

class _CustomTrackballWidgetState extends State<_CustomTrackballWidget> {
  @override
  void dispose() {
    widget.onDispose.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
