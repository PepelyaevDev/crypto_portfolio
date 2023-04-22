import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class DeletePaymentWidget extends StatelessWidget {
  final PaymentEntity payment;
  final VoidCallback onTapSuccess;

  DeletePaymentWidget({required this.payment, required this.onTapSuccess});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 3)]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                ),
                ElevatedButton(
                  onPressed: onTapSuccess,
                  child: Text('Delete payment'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
