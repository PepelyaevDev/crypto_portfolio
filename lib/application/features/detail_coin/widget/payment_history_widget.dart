import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class PaymentHistoryWidget extends StatelessWidget {
  final List<PaymentEntity> history;
  final VoidCallback onTapAdd;
  final ValueChanged<PaymentEntity> onTapDelete;
  final VoidCallback onTapDeleteAll;

  const PaymentHistoryWidget({
    required this.history,
    required this.onTapAdd,
    required this.onTapDelete,
    required this.onTapDeleteAll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.localization.paymentHistory,
                  style: AppStyles.bold22,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppBarIconButton(
                      iconData: Icons.add,
                      onTap: onTapAdd,
                    ),
                    AppBarIconButton(
                      iconData: Icons.delete_outline,
                      onTap: onTapDeleteAll,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Ink(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(color: AppColors.blue.withOpacity(0.3), blurRadius: 5),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) => _PaymentWidget(
                  payment: history[i],
                  onTapDelete: onTapDelete,
                ),
                separatorBuilder: (_, __) => Divider(height: 30),
                itemCount: history.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PaymentWidget extends StatelessWidget {
  final ValueChanged<PaymentEntity> onTapDelete;
  const _PaymentWidget({required this.payment, required this.onTapDelete});

  final PaymentEntity payment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${payment.amount}  ${payment.numberOfCoins}'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => _DeletePaymentWidget(
                    payment: payment,
                    onTapDelete: () {
                      onTapDelete(payment);
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.clear, size: 15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _DeletePaymentWidget extends StatelessWidget {
  final PaymentEntity payment;
  final VoidCallback onTapDelete;

  _DeletePaymentWidget({required this.payment, required this.onTapDelete});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(color: AppColors.blue.withOpacity(0.3), blurRadius: 5),
            ],
          ),
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
                  onPressed: onTapDelete,
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
