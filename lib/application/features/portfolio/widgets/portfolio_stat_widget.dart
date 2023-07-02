import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/portfolio_history_page.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/pie_chart.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/portfolio_data.dart';
import 'package:flutter/material.dart';

class PortfolioStatWidget extends StatefulWidget {
  final CoinsEntity coins;
  const PortfolioStatWidget(this.coins);

  @override
  State<PortfolioStatWidget> createState() => _PortfolioStatWidgetState();
}

class _PortfolioStatWidgetState extends State<PortfolioStatWidget> {
  bool openPieChart = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Ink(
        width: MediaQuery.of(context).size.width,
        decoration: AppDecorations.blueBorderDecoration,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localization.portfolioStatistics,
                    style: AppStyles.normal16,
                  ),
                  Text(
                    widget.coins.holdingsValue.moneyFull,
                    style: AppStyles.bold18.copyWith(color: widget.coins.color),
                  ),
                ],
              ),
              SizedBox(height: 15),
              _PortfolioStatRow(
                title: context.localization.totalInvested,
                value: widget.coins.invested.moneyFull,
                valueColor: AppColors.grayDark,
              ),
              _PortfolioStatRow(
                title: context.localization.totalProfitLoss,
                value: widget.coins.profit,
                valueIcon: widget.coins.iconData,
                valueColor: widget.coins.color,
              ),
              if (openPieChart)
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Column(
                    children: [
                      PieChartWidget(widget.coins),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => PortfolioHistoryPage(),
                          ));
                        },
                        child: Text(context.localization.transactionHistory),
                      )
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {
                    setState(() {
                      openPieChart = !openPieChart;
                    });
                  },
                  child: Ink(
                    width: double.infinity,
                    child: Icon(
                      openPieChart ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      size: 30,
                      color: AppColors.blackLight,
                    ),
                  ),
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
        Text(title, style: AppStyles.normal12.copyWith(color: AppColors.grayDark)),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (valueIcon != null) Icon(valueIcon, color: valueColor),
            Text(value, style: AppStyles.bold12.copyWith(color: valueColor)),
          ],
        ),
      ],
    );
  }
}
