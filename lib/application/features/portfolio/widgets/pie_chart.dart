import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/portfolio_data.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatefulWidget {
  final CoinsEntity portfolioCoins;
  PieChartWidget(this.portfolioCoins);

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  final Map<String, double> dataMap = {};
  final Map<String, String> legendLabels = {};

  void _updateData() {
    dataMap.clear();
    legendLabels.clear();
    for (var e in widget.portfolioCoins.list) {
      dataMap.addAll({e.symbol: e.holdingsValue});
      legendLabels.addAll({
        e.symbol:
            '${e.symbol} - ${(e.holdingsValue / widget.portfolioCoins.holdingsValue * 100).toStringAsFixed(2)}%',
      });
    }
  }

  @override
  void initState() {
    _updateData();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PieChartWidget oldWidget) {
    _updateData();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PieChart(
          legendLabels: legendLabels,
          dataMap: dataMap,
          legendOptions: LegendOptions(legendTextStyle: AppStyles.normal14),
          chartValuesOptions: ChartValuesOptions(showChartValues: false),
        )
      ],
    );
  }
}
