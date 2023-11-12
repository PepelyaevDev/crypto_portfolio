import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/portfolio_widgets/delete_popup.dart';
import 'package:flutter/material.dart';

import 'payment_history_widget.dart';

class PaymentDetailPopup {
  static void show({
    required BuildContext context,
    required PaymentWidgetArgs args,
  }) {
    final double radius = 5;
    showDialog(
      context: context,
      builder: (_) {
        return Center(
          child: Material(
            borderRadius: BorderRadius.circular(radius),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width - 40,
                maxHeight: MediaQuery.sizeOf(context).height * 0.8,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(radius),
                          topRight: Radius.circular(radius),
                        ),
                        color: AppColors.primary,
                      ),
                    ),
                    Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(radius),
                          bottomRight: Radius.circular(radius),
                        ),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 6),
                            SizedBox(
                              height: 30,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.network(
                                    args.coinLogo,
                                    width: 30,
                                    height: 30,
                                    errorBuilder: (_, __, ___) => SizedBox(),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    args.payment.id.symbol,
                                    style: AppStyles.normal18,
                                  ),
                                ],
                              ),
                            ),
                            Divider(height: 20),
                            PaymentRow(
                              title: args.paymentType(context),
                              text: '${args.payment.numberOfCoins} ${args.name}',
                              color: args.color,
                            ),
                            SizedBox(height: 6),
                            PaymentRow(
                              title: context.localization.price,
                              text: (args.payment.amount / args.payment.numberOfCoins).moneyFull,
                            ),
                            SizedBox(height: 6),
                            PaymentRow(
                              title: args.moneyText(context),
                              text: args.payment.amount.moneyFull,
                            ),
                            SizedBox(height: 6),
                            PaymentRow(
                              title: context.localization.date,
                              text: args.payment.dateTime.dateLong(context),
                            ),
                            Divider(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(AppColors.white),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          side: BorderSide(color: AppColors.grayDark),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      showDialog(
                                        context: context,
                                        builder: (_) => DeletePopup(
                                          title: args.onTapDelete == null
                                              ? context.localization.deletionNotPossible
                                              : context.localization.deleteTransaction,
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                args.onTapDelete == null
                                                    ? context.localization.numberCoinsWillNegative
                                                    : context
                                                        .localization.statisticsWillRecalculated,
                                                style: AppStyles.normal16,
                                              ),
                                              if (args.onTapDelete != null)
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 10.0),
                                                  child: Text(
                                                    context.localization.actionNotUndone,
                                                    style: AppStyles.normal16,
                                                  ),
                                                ),
                                            ],
                                          ),
                                          onTapDelete: args.onTapDelete == null
                                              ? null
                                              : () {
                                                  args.onTapDelete!(args.payment);
                                                  Navigator.of(context).pop();
                                                },
                                        ),
                                      );
                                    },
                                    child: Text(
                                      context.localization.delete,
                                      style: AppStyles.normal14.copyWith(color: AppColors.grayDark),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(AppColors.primary),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      context.localization.close,
                                      style: AppStyles.normal14.copyWith(color: AppColors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class PaymentRow extends StatelessWidget {
  final String title;
  final String text;
  final Color? color;
  final TextStyle? style;
  const PaymentRow({
    required this.title,
    required this.text,
    this.color,
    this.style,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: (style ?? AppStyles.normal16).copyWith(color: color ?? AppColors.grayDark),
        ),
        Text(
          text,
          style: (style ?? AppStyles.normal16).copyWith(color: color ?? AppColors.grayDark),
        ),
      ],
    );
  }
}
