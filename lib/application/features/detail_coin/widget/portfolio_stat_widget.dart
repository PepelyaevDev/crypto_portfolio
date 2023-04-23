import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

class PortfolioStatWidget extends StatelessWidget {
  final CoinEntity coin;
  final bool loading;
  final VoidCallback onTapUpdate;

  const PortfolioStatWidget({
    required this.coin,
    required this.loading,
    required this.onTapUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
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
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(color: AppColors.blue.withOpacity(0.3), blurRadius: 5),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(context.localization.holdings),
                      ),
                      Expanded(
                        child: Text(
                          coin.holdings.toStringAsFixed(5),
                          style: AppStyles.bold14.copyWith(color: AppColors.black),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Text(context.localization.profitLoss),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(coin.iconData, color: coin.color),
                            Text(
                              '${coin.percentageDifference.percentageToString} % '
                              '(${coin.dollarDifference.moneyFull})',
                              style: AppStyles.bold14.copyWith(color: coin.color),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 30),
                  Row(
                    children: [
                      _PortfolioDataColumn(
                        title: context.localization.price,
                        value: coin.currentPrice.moneyFull,
                      ),
                      _PortfolioDataColumn(
                        title: context.localization.averageNetCost,
                        value: coin.averageNetCost.moneyFull,
                        valueColor: coin.color,
                      ),
                    ],
                  ),
                  Divider(height: 30),
                  Row(
                    children: [
                      _PortfolioDataColumn(
                        title: context.localization.totalCost,
                        value: coin.totalCost.moneyFull,
                      ),
                      _PortfolioDataColumn(
                        title: context.localization.holdingsValue,
                        value: coin.holdingsValue.moneyFull,
                        valueColor: coin.color,
                      ),
                    ],
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

class _PortfolioDataColumn extends StatelessWidget {
  final String title;
  final String value;
  late final Color _valueColor;
  _PortfolioDataColumn({
    required this.title,
    required this.value,
    Color? valueColor,
  }) {
    _valueColor = valueColor ?? AppColors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.normal14.copyWith(
              color: AppColors.black.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: AppStyles.bold14.copyWith(color: _valueColor),
          ),
        ],
      ),
    );
  }
}
