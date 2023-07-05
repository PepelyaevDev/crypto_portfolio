import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:flutter/material.dart';

class DistanceButtons extends StatelessWidget {
  final ValueChanged<MarketChartDistance> onTap;
  final MarketChartDistance selectedDistance;

  const DistanceButtons({
    required this.onTap,
    required this.selectedDistance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: MarketChartDistance.values.map((e) {
          return _DistanceButton(
              text: _getDistanceLabel(e, context),
              thisDistanceChosen: e == selectedDistance,
              onTap: () {
                onTap(e);
              });
        }).toList(),
      ),
    );
  }

  String _getDistanceLabel(
    MarketChartDistance distance,
    BuildContext context,
  ) {
    switch (distance) {
      case MarketChartDistance.d1:
        return context.localization.d1;
      case MarketChartDistance.d7:
        return context.localization.d7;
      case MarketChartDistance.d30:
        return context.localization.d30;
      case MarketChartDistance.d90:
        return context.localization.d90;
      case MarketChartDistance.d365:
        return context.localization.d365;
      case MarketChartDistance.d1095:
        return context.localization.d1095;
      case MarketChartDistance.d1825:
        return context.localization.d1825;
      case MarketChartDistance.dMax:
        return context.localization.dMax;
    }
  }
}

class _DistanceButton extends StatelessWidget {
  final String text;
  final bool thisDistanceChosen;
  final VoidCallback onTap;

  const _DistanceButton({
    required this.text,
    required this.thisDistanceChosen,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(3),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: thisDistanceChosen ? AppColors.primary : AppColors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            style: AppStyles.bold14
                .copyWith(color: thisDistanceChosen ? AppColors.white : AppColors.blackLight),
          ),
        ),
      ),
    );
  }
}
