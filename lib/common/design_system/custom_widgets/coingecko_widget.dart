import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoinGeckoWidget extends StatelessWidget {
  const CoinGeckoWidget();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Powered by ',
          style: context.styles.bodySmall,
        ),
        TextButton(
          style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              textStyle: context.styles.labelSmall!.copyWith(
                color: context.colors.primary,
              )),
          onPressed: () {
            launchUrl(
              Uri.parse('https://www.coingecko.com/en/api'),
              mode: LaunchMode.externalApplication,
            );
          },
          child: Text('CoinGecko API'),
        ),
      ],
    );
  }
}
