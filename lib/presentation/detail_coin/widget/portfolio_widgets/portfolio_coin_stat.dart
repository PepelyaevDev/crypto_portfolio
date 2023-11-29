import 'package:crypto_portfolio/common/design_system/buttons/refresh_icon_button.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/primary_container.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

class PortfolioCoinStat extends StatelessWidget {
  final CoinEntity coin;
  final bool loading;
  final VoidCallback onTapUpdate;

  const PortfolioCoinStat({
    required this.coin,
    required this.loading,
    required this.onTapUpdate,
  });

  @override
  Widget build(BuildContext context) {
    final color = coin.hasProfit ? context.colors.primary : context.colors.error;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localization.statistics,
                style: context.styles.titleMedium,
              ),
              RefreshButton(
                loading: loading,
                backgroundColor: RefreshButtonBackground.background,
                onTapUpdate: onTapUpdate,
              )
            ],
          ),
          PrimaryContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _PortfolioDataRow(
                    firstWidget: Text(
                      context.localization.holdings,
                      style: context.styles.bodySmall,
                    ),
                    secondWidget: Text(
                      coin.holdings.toString(),
                      style: context.styles.labelSmall,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Divider(height: 30),
                  _PortfolioDataRow(
                    firstWidget: Text(
                      context.localization.profitLoss,
                      style: context.styles.bodySmall,
                    ),
                    secondWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(coin.iconData, color: color),
                        Text(
                          coin.profit,
                          style: context.styles.labelSmall!.copyWith(color: color),
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 30),
                  _PortfolioDataRow(
                    firstWidget: _PortfolioDataColumn(
                      title: context.localization.invested,
                      value: coin.invested.moneyFull,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    secondWidget: _PortfolioDataColumn(
                      title: context.localization.holdingsValue,
                      value: coin.holdingsValue.moneyFull,
                      valueColor: color,
                      crossAxisAlignment: CrossAxisAlignment.end,
                    ),
                  ),
                  Divider(height: 30),
                  _PortfolioDataRow(
                    firstWidget: _PortfolioDataColumn(
                      title: context.localization.currentPrice,
                      value: coin.currentPrice.moneyFull,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    secondWidget: _PortfolioDataColumn(
                      title: context.localization.averageNetCost,
                      value: coin.averageNetCost,
                      valueColor: color,
                      crossAxisAlignment: CrossAxisAlignment.end,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PortfolioDataRow extends StatelessWidget {
  final Widget firstWidget;
  final Widget secondWidget;
  const _PortfolioDataRow({
    required this.firstWidget,
    required this.secondWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: firstWidget),
        Expanded(flex: 3, child: secondWidget),
      ],
    );
  }
}

class _PortfolioDataColumn extends StatelessWidget {
  final String title;
  final String value;
  final CrossAxisAlignment crossAxisAlignment;
  final Color? valueColor;

  _PortfolioDataColumn({
    required this.title,
    required this.value,
    required this.crossAxisAlignment,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          style: context.styles.bodySmall,
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: context.styles.labelSmall!.copyWith(
            color: valueColor ?? context.colors.onBackground,
          ),
        ),
      ],
    );
  }
}
