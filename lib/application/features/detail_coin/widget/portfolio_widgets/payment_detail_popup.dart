import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/base_popup.dart';
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
    showDialog(
      context: context,
      builder: (_) {
        return BasePopup(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
                        backgroundColor: MaterialStateProperty.all<Color>(AppColors.white),
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
                                      : context.localization.statisticsWillRecalculated,
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
          color: AppColors.primary,
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
