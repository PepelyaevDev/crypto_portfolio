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
                  context.localization.transactionHistory,
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
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => _DeletePopup(
                            title: context.localization.deleteTransactionHistory,
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  context.localization.statisticsWillDeleted,
                                  style: AppStyles.normal16,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  context.localization.actionNotUndone,
                                  style: AppStyles.normal16,
                                ),
                              ],
                            ),
                            onTapDelete: () {
                              onTapDeleteAll.call();
                              Navigator.of(context).pop();
                            },
                          ),
                        );
                      },
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
                BoxShadow(color: AppColors.blue.withOpacity(0.2), blurRadius: 3),
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
                  builder: (_) => _DeletePopup(
                    title: context.localization.deleteTransaction,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          context.localization.statisticsWillRecalculated,
                          style: AppStyles.normal16,
                        ),
                        SizedBox(height: 10),
                        Text(
                          context.localization.actionNotUndone,
                          style: AppStyles.normal16,
                        ),
                      ],
                    ),
                    onTapDelete: () {
                      onTapDelete(payment);
                      Navigator.of(context).pop();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.clear, size: 20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _DeletePopup extends StatelessWidget {
  final String title;
  final Widget content;
  final VoidCallback onTapDelete;

  _DeletePopup({
    required this.title,
    required this.content,
    required this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    final double radius = 5;
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(radius),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    topRight: Radius.circular(radius),
                  ),
                  color: AppColors.red,
                ),
              ),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(radius),
                    bottomRight: Radius.circular(radius),
                  ),
                  color: AppColors.lightGray,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),
                      Text(title, style: AppStyles.bold22),
                      SizedBox(height: 20),
                      content,
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                context.localization.cancel,
                                style: AppStyles.normal14.copyWith(color: AppColors.black),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColors.red),
                            ),
                            onPressed: onTapDelete,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(context.localization.delete),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
