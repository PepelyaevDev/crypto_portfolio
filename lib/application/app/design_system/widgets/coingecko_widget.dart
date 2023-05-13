import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoinGeckoWidget extends StatelessWidget {
  final double rightPadding;
  CoinGeckoWidget({
    this.rightPadding = 15,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Powered by ',
          style: AppStyles.normal14,
        ),
        InkWell(
          onTap: () {
            launchUrl(Uri.parse('https://www.coingecko.com/en/api'));
          },
          borderRadius: BorderRadius.circular(5),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'CoinGecko API',
              style: AppStyles.normal14.copyWith(color: AppColors.blue),
            ),
          ),
        ),
        SizedBox(width: rightPadding),
      ],
    );
  }
}
