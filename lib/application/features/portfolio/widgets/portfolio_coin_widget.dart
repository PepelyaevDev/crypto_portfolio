import 'package:crypto_portfolio/application/features/portfolio/widgets/payment_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class PortfolioCoinWidget extends StatelessWidget {
  const PortfolioCoinWidget({required this.coinEntity});

  final CoinEntity coinEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(coinEntity.name),
        ...coinEntity.history.map((payment) => PaymentWidget(payment: payment)).toList(),
      ],
    );
  }
}
