import 'package:crypto_portfolio/application/features/detail_coin/widget/delete_payment_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

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
                    onTapSuccess: () {
                      //context.read<PortfolioBloc>().add(PortfolioEvent.updateHistory(payment));
                    },
                  );
                });
          },
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
