import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:flutter/material.dart';

class DevelopmentWidget extends StatelessWidget {
  final String content;
  const DevelopmentWidget(this.content);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.localization.underDevelopment,
              style: AppStyles.bold16,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              content,
              style: AppStyles.normal16,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
