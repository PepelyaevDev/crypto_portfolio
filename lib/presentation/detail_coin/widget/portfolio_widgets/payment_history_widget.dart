import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/payment_detail_popup.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

import 'delete_popup.dart';

class PaymentWidgetArgs {
  final String name;
  final String coinLogo;
  final PaymentEntity payment;
  final ValueChanged<PaymentEntity>? onTapDelete;
  const PaymentWidgetArgs({
    required this.name,
    required this.coinLogo,
    required this.payment,
    required this.onTapDelete,
  });

  bool get buy => payment.type == PaymentType.buy;

  Color get color => buy ? AppColors.greenLight : AppColors.primary;
  String paymentType(BuildContext context) =>
      buy ? context.localization.buy : context.localization.sell;
  String moneyText(BuildContext context) =>
      buy ? context.localization.paid : context.localization.received;
}

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
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) => PaymentWidget(
                PaymentWidgetArgs(
                  name: coin.id.symbol,
                  coinLogo: coin.image,
                  payment: coin.history[i],
                  onTapDelete: coin.canDelete(i) ? onTapDelete : null,
                ),
              ),
              separatorBuilder: (_, __) => Divider(height: 1),
              itemCount: coin.history.length,
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentWidget extends StatelessWidget {
  final PaymentWidgetArgs args;
  const PaymentWidget(this.args);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(3),
      onTap: () {
        PaymentDetailPopup.show(context: context, args: args);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.network(
                    args.coinLogo,
                    width: 20,
                    height: 20,
                    errorBuilder: (_, __, ___) => SizedBox(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PaymentRow(
                        title: args.paymentType(context),
                        text: '${args.payment.numberOfCoins} ${args.name}',
                        color: args.color,
                        style: AppStyles.normal16,
                      ),
                      SizedBox(height: 2),
                      PaymentRow(
                        title: args.payment.dateTime.dateLong(context),
                        text: '${args.moneyText(context)}: ${args.payment.amount.moneyFull}',
                        style: AppStyles.normal14,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
