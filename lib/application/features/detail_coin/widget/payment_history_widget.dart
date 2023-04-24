import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class PaymentHistoryWidget extends StatelessWidget {
  final List<PaymentEntity> history;
  final String name;
  final VoidCallback onTapAdd;
  final ValueChanged<PaymentEntity> onTapDelete;
  final VoidCallback onTapDeleteAll;

  const PaymentHistoryWidget({
    required this.history,
    required this.name,
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
                vertical: 15,
                horizontal: 10,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) => _PaymentWidget(
                  name: name,
                  payment: history[i],
                  onTapDelete: onTapDelete,
                ),
                separatorBuilder: (_, __) => Divider(height: 25),
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
  final String name;
  final PaymentEntity payment;
  final ValueChanged<PaymentEntity> onTapDelete;
  const _PaymentWidget({
    required this.name,
    required this.payment,
    required this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    final Color color;
    final IconData icon;
    final String paymentType;
    final String moneyText;
    if (payment.type == PaymentType.buy) {
      color = AppColors.green;
      icon = Icons.arrow_forward;
      paymentType = context.localization.buy;
      moneyText = context.localization.paid;
    } else {
      color = AppColors.blue;
      icon = Icons.arrow_back;
      paymentType = context.localization.sell;
      moneyText = context.localization.received;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: color,
              size: 20,
            ),
            SizedBox(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentType,
                  style: AppStyles.bold14,
                ),
                SizedBox(height: 5),
                Text(
                  payment.dateTime.date(context),
                ),
                SizedBox(height: 5),
                Text(
                  payment.dateTime.time,
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$moneyText: ${payment.amount.moneyFull}',
                  style: AppStyles.bold14.copyWith(color: color),
                ),
                SizedBox(height: 5),
                Text(
                  '${payment.numberOfCoins} $name',
                ),
                SizedBox(height: 5),
                Text(
                  '${context.localization.price}: '
                  '${(payment.amount / payment.numberOfCoins).moneyFull}',
                ),
              ],
            ),
            SizedBox(width: 5),
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
                padding: const EdgeInsets.all(7.0),
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
