import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/delete_payment_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({required this.payment});

  final PaymentEntity payment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${payment.amount}  ${payment.numberOfCoins}'),
        IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return DeletePaymentWidget(
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
