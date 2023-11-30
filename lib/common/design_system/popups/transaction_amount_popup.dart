import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/design_system/popups/educational_popup_widget.dart';
import 'package:crypto_portfolio/common/design_system/popups/base_popup.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:flutter/material.dart';

class TransactionAmountPopup {
  static void show(BuildContext context, bool educational) async {
    if (educational) {
      return EducationalPopupWidget.show(
        context,
        EducationalPopup.transactionAmount,
        _body(context),
        () {},
      );
    } else {
      return showDialog(
        context: context,
        builder: (_) {
          return BasePopup(
            color: context.colors.primary,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _body(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      type: ButtonType.secondary,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      text: context.localization.ok,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  static Widget _body(BuildContext context) => Column(
        children: [
          Text(
            context.localization.transactionAmountPopupHeader,
            style: context.styles.labelLarge,
          ),
          SizedBox(height: 10),
          Text(
            context.localization.transactionAmountPopupBody,
            style: context.styles.bodyMedium,
          ),
          SizedBox(height: 10),
        ],
      );
}
