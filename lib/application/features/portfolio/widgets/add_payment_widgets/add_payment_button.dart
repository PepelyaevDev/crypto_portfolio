import 'package:crypto_portfolio/application/features/portfolio/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentButton extends StatelessWidget {
  final AddPaymentState state;
  AddPaymentButton({required this.state});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          state.maybeMap(
            success: (_) => Colors.blue,
            orElse: () => Colors.grey,
          ),
        ),
      ),
      onPressed: () {
        state.maybeMap(
          success: (state) {
            context.read<AddPaymentBloc>().add(
                  AddPaymentEvent.updateHistory(
                    PaymentEntity(
                      id: state.coin.id,
                      dateTime: DateTime.now(),
                      type: PaymentType.deposit,
                      amount: 123,
                      numberOfCoins: 123,
                    ),
                  ),
                );
          },
          orElse: () => null,
        );
      },
      child: Text('Add payment'),
    );
  }
}
