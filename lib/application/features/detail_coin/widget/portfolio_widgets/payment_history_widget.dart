import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

import 'delete_popup.dart';

class PaymentHistoryWidget extends StatelessWidget {
  final CoinEntity coin;
  final VoidCallback onTapAdd;
  final ValueChanged<PaymentEntity> onTapDelete;
  final VoidCallback onTapDeleteAll;

  const PaymentHistoryWidget({
    required this.coin,
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
                          builder: (_) => DeletePopup(
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
            decoration: AppDecorations.blueBorderDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) => _PaymentWidget(
                  name: coin.symbol,
                  payment: coin.history[i],
                  onTapDelete: _canDelete.call(i) ? onTapDelete : null,
                ),
                separatorBuilder: (_, __) => Divider(height: 25),
                itemCount: coin.history.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _canDelete(int i) {
    if (coin.history[i].type == PaymentType.buy && coin.history[i].numberOfCoins > coin.holdings) {
      return false;
    }
    return true;
  }
}

class _PaymentWidget extends StatelessWidget {
  final String name;
  final PaymentEntity payment;
  final ValueChanged<PaymentEntity>? onTapDelete;
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
      color = AppColors.greenLight;
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
                  style: AppStyles.normal14,
                ),
                SizedBox(height: 5),
                Text(
                  payment.dateTime.time,
                  style: AppStyles.normal14,
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
                  style: AppStyles.normal14,
                ),
                SizedBox(height: 5),
                Text(
                  '${context.localization.price}: '
                  '${(payment.amount / payment.numberOfCoins).moneyFull}',
                  style: AppStyles.normal14,
                ),
              ],
            ),
            SizedBox(width: 5),
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => DeletePopup(
                    title: onTapDelete == null
                        ? context.localization.deletionNotPossible
                        : context.localization.deleteTransaction,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          onTapDelete == null
                              ? context.localization.numberCoinsWillNegative
                              : context.localization.statisticsWillRecalculated,
                          style: AppStyles.normal16,
                          textAlign: TextAlign.center,
                        ),
                        if (onTapDelete != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              context.localization.actionNotUndone,
                              style: AppStyles.normal16,
                              textAlign: TextAlign.center,
                            ),
                          ),
                      ],
                    ),
                    onTapDelete: onTapDelete == null
                        ? null
                        : () {
                            onTapDelete!(payment);
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
