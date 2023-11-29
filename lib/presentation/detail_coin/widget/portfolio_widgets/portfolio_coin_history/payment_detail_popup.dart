import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/design_system/popups/base_popup.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_history/delete_popup.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_history/payment_widget.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_history/payment_widget_row.dart';
import 'package:flutter/material.dart';

class PaymentDetailPopup {
  static void show({
    required BuildContext context,
    required PaymentWidgetArgs args,
  }) {
    showDialog(
      context: context,
      builder: (_) {
        return BasePopup(
          color: context.colors.primary,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
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
                    style: context.styles.bodyLarge,
                  ),
                ],
              ),
              SizedBox(height: 20),
              PaymentRow(
                title: args.paymentType(context),
                text: '${args.payment.numberOfCoins} ${args.name}',
                color: args.color(context),
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
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      type: ButtonType.error,
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
                                  style: context.styles.bodyMedium,
                                ),
                                if (args.onTapDelete != null)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      context.localization.actionNotUndone,
                                      style: context.styles.bodyMedium,
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
                      text: context.localization.delete,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      type: ButtonType.secondary,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      text: context.localization.close,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
