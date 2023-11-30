import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/pages/add_payment_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class PortfolioCoinEmpty extends StatelessWidget {
  final CoinId id;
  const PortfolioCoinEmpty({required this.id});

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
                context.localization.portfolioCoinIsEmpty,
                style: context.styles.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          CustomButton(
            type: ButtonType.primary,
            onPressed: () {
              context.push(AddPaymentPage(id: id));
            },
            text: context.localization.addTransaction,
          ),
        ],
      ),
    );
  }
}
