import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_history/payment_detail_popup.dart';
import 'package:flutter/material.dart';

import 'payment_widget_row.dart';

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

  Color color(BuildContext context) => buy ? context.colors.secondary : context.colors.primary;
  String paymentType(BuildContext context) =>
      buy ? context.localization.buy : context.localization.sell;
  String moneyText(BuildContext context) =>
      buy ? context.localization.paid : context.localization.received;
}

class PaymentWidget extends StatelessWidget {
  final PaymentWidgetArgs args;
  const PaymentWidget(this.args);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(baseBorderRadius),
      onTap: () {
        PaymentDetailPopup.show(context: context, args: args);
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  args.coinLogo,
                  width: 20,
                  height: 20,
                  errorBuilder: (_, __, ___) => SizedBox(),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PaymentRow(
                        title: args.paymentType(context),
                        text: '${args.payment.numberOfCoins} ${args.name}',
                        color: args.color(context),
                        style: context.styles.bodyMedium,
                      ),
                      SizedBox(height: 2),
                      PaymentRow(
                        title: args.payment.dateTime.dateLong(context),
                        text: '${args.moneyText(context)}: ${args.payment.amount.moneyFull}',
                        style: context.styles.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
