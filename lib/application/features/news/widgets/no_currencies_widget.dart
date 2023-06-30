import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:flutter/material.dart';

class NoCurrenciesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20),
          Text(
            context.localization.personalNews,
            style: AppStyles.bold22,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            context.localization.personalNewsDesc,
            style: AppStyles.normal16,
          ),
        ],
      ),
    );
  }
}
