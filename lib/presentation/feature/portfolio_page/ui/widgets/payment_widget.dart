import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/ui/widgets/delete_payment_widget.dart';
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
