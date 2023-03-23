import 'package:crypto_portfolio/application/features/portfolio/pages/add_payment_page.dart';
import 'package:flutter/material.dart';

class EmptyPortfolioWidget extends StatelessWidget {
  ///TODO: create correct widget
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AddPaymentPage(),
            ),
          );
        },
        child: Text('add payment'),
      ),
    );
  }
}
