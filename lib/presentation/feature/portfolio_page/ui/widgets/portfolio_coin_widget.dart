import 'package:crypto_portfolio/domain/entity/portfolio_coins/portfolio_coins_list.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/ui/widgets/payment_widget.dart';
import 'package:flutter/material.dart';

class PortfolioCoinWidget extends StatelessWidget {
  const PortfolioCoinWidget({required this.coin});

  final PortfolioCoin coin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(coin.name),
        ...coin.history.map((payment) => PaymentWidget(payment: payment)).toList(),
      ],
    );
  }
}
