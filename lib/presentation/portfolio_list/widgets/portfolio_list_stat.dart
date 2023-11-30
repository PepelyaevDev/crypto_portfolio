import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/primary_container.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/pages/portfolio_list_history_page.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/widgets/pie_chart.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/portfolio_data.dart';
import 'package:flutter/material.dart';

class PortfolioListStat extends StatefulWidget {
  final CoinsEntity coins;
  const PortfolioListStat(this.coins);

  @override
  State<PortfolioListStat> createState() => _PortfolioListStatState();
}

class _PortfolioListStatState extends State<PortfolioListStat> {
  bool openPieChart = false;

  @override
  Widget build(BuildContext context) {
    final color = widget.coins.hasProfit ? context.colors.primary : context.colors.error;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: PrimaryContainer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localization.portfolioStatistics,
                    style: context.styles.bodyMedium,
                  ),
                  Text(
                    widget.coins.holdingsValue.moneyFull,
                    style: context.styles.labelLarge!.copyWith(color: color),
                  ),
                ],
              ),
              SizedBox(height: 15),
              _PortfolioStatRow(
                title: context.localization.totalInvested,
                value: widget.coins.invested.moneyFull,
                valueColor: context.colors.onBackground,
              ),
              _PortfolioStatRow(
                title: context.localization.profitLoss,
                value: widget.coins.profit,
                valueIcon: widget.coins.iconData,
                valueColor: color,
              ),
              if (openPieChart)
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: PieChartWidget(widget.coins),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => PortfolioListHistoryPage(),
                        ));
                      },
                      type: ButtonType.primary,
                      text: context.localization.transactionHistory,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          openPieChart = !openPieChart;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.localization.coinChart,
                            style: context.styles.bodySmall!.copyWith(
                              color: context.colors.primary,
                            ),
                          ),
                          Icon(
                            openPieChart ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                            size: 30,
                            color: context.colors.primary,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PortfolioStatRow extends StatelessWidget {
  final String title;
  final String value;
  final IconData? valueIcon;
  final Color? valueColor;
  _PortfolioStatRow({
    required this.title,
    required this.value,
    this.valueIcon,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: context.styles.bodySmall),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (valueIcon != null) Icon(valueIcon, color: valueColor),
            Text(value, style: context.styles.bodySmall!.copyWith(color: valueColor)),
          ],
        ),
      ],
    );
  }
}
