import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoinGeckoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Powered by '),
          InkWell(
            onTap: () {
              launchUrl(Uri.parse('https://www.coingecko.com/en/api'));
            },
            borderRadius: BorderRadius.circular(5),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'CoinGecko API',
                style: TextStyle(color: AppColors.blue),
              ),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
