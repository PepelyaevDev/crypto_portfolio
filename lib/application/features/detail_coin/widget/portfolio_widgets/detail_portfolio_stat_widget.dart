import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

class DetailPortfolioStatWidget extends StatelessWidget {
  final CoinEntity coin;
  final bool loading;
  final VoidCallback onTapUpdate;

  const DetailPortfolioStatWidget({
    required this.coin,
    required this.loading,
    required this.onTapUpdate,
  });

  @override
  Widget build(BuildContext context) {
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
                style: AppStyles.bold22,
              ),
              RefreshIconButton(
                loading: loading,
                onTapUpdate: onTapUpdate,
                rightPadding: 0,
              )
            ],
          ),
          Container(
            decoration: AppDecorations.blueBorderDecoration,
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
                      style: AppStyles.normal14,
                    ),
                    secondWidget: Text(
                      coin.holdings.toString(),
                      style: AppStyles.bold14.copyWith(color: AppColors.blackLight),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Divider(height: 30),
                  _PortfolioDataRow(
                    firstWidget: Text(
                      context.localization.profitLoss,
                      style: AppStyles.normal14,
                    ),
                    secondWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(coin.iconData, color: coin.color),
                        Text(
                          coin.profit,
                          style: AppStyles.bold14.copyWith(color: coin.color),
                        ),
                      ],
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
                      valueColor: coin.color,
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                      valueColor: coin.color,
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
  late final Color _valueColor;

  _PortfolioDataColumn({
    required this.title,
    required this.value,
    required this.crossAxisAlignment,
    Color? valueColor,
  }) {
    _valueColor = valueColor ?? AppColors.blackLight;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          style: AppStyles.normal14.copyWith(
            color: AppColors.blackLight.withOpacity(0.7),
          ),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: AppStyles.bold14.copyWith(color: _valueColor),
        ),
      ],
    );
  }
}
