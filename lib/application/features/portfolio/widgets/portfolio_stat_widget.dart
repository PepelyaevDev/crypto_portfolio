import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/portfolio_data.dart';
import 'package:flutter/material.dart';

class PortfolioStatWidget extends StatelessWidget {
  final CoinsEntity coins;
  const PortfolioStatWidget(this.coins);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Ink(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(color: AppColors.blue.withOpacity(0.2), blurRadius: 3),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                    coins.holdingsValue.moneyFull,
                    style: AppStyles.bold18.copyWith(color: coins.color),
                  ),
                ],
              ),
              SizedBox(height: 15),
              _PortfolioStatRow(
                title: context.localization.totalInvested,
                value: coins.invested.moneyFull,
                valueColor: AppColors.grayDark,
              ),
              _PortfolioStatRow(
                title: context.localization.totalProfitLoss,
                value: coins.profit,
                valueIcon: coins.iconData,
                valueColor: coins.color,
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
