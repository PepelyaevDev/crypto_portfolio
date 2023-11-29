import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class NoCurrenciesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: marginFromEdgeOfScreen),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Text(
            context.localization.personalNews,
            style: context.styles.titleMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            context.localization.personalNewsDesc,
            style: context.styles.bodyMedium,
          ),
        ],
      ),
    );
  }
}
