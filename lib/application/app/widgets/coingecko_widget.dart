import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoinGeckoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Powered by '),
          TextButton(
            onPressed: () {
              launchUrl(Uri.parse('https://www.coingecko.com/en/api'));
            },
            child: Text('CoinGecko API'),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
