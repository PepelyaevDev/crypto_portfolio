import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/presentation/portfolio/pages/add_payment_page.dart';
import 'package:flutter/material.dart';

class EmptyPortfolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 30,
            ),
            child: SizedBox(
              child: Text(
                context.localization.portfolioIsEmpty,
                style: AppStyles.normal16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AddPaymentPage(),
                ),
              );
            },
            child: Text(context.localization.addTransaction),
          ),
        ],
      ),
    );
  }
}
