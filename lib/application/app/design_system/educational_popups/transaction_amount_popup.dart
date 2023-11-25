import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/educational_popups/educational_popup_widget.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/base_popup.dart';
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
            color: AppColors.primary,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _body(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColors.grayLight),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        context.localization.ok,
                        style: AppStyles.normal14.copyWith(color: AppColors.blackLight),
                      ),
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
          SizedBox(height: 10),
          Text(
            context.localization.transactionAmountPopupHeader,
            style: AppStyles.bold18.copyWith(color: AppColors.blackLight),
          ),
          SizedBox(height: 10),
          Text(
            context.localization.transactionAmountPopupBody,
            style: AppStyles.normal16.copyWith(color: AppColors.grayDark),
          ),
          SizedBox(height: 20),
        ],
      );
}
