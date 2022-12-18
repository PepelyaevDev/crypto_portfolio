import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/presentation/feature/delete_payment_view/delete_payment_view/delete_payment_view.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({required this.payment});

  final Payment payment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(payment.amount.toString() + '  ' + payment.numberOfCoins.toString()),
        IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return DeletePaymentView(
                    payment: payment,
                    portfolioBloc: context.read<PortfolioBloc>(),
                  );
                });
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
