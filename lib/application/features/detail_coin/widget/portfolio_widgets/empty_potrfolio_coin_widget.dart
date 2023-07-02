import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/add_payment_page.dart';
import 'package:flutter/material.dart';

class EmptyPortfolioCoinWidget extends StatelessWidget {
  final String coinId;
  const EmptyPortfolioCoinWidget({required this.coinId});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
              child: Text(
                context.localization.portfolioCoinIsEmpty,
                style: AppStyles.normal16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AddPaymentPage(
                    coinID: coinId,
                  ),
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
