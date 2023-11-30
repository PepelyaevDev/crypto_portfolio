import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/pages/add_payment_page.dart';
import 'package:flutter/material.dart';

class PortfolioListEmpty extends StatelessWidget {
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
                style: context.styles.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          CustomButton(
            type: ButtonType.primary,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AddPaymentPage(),
                ),
              );
            },
            text: context.localization.addTransaction,
          ),
        ],
      ),
    );
  }
}
