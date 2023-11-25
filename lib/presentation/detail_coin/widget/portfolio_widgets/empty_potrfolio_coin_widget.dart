import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/presentation/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class EmptyPortfolioCoinWidget extends StatelessWidget {
  final CoinId id;
  const EmptyPortfolioCoinWidget({required this.id});

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
                style: AppStyles.normal16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => AddPaymentPage(id: id)),
              );
            },
            child: Text(context.localization.addTransaction),
          ),
        ],
      ),
    );
  }
}
