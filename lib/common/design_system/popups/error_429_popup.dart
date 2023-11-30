import 'package:crypto_portfolio/common/design_system/popups/educational_popup_widget.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:flutter/material.dart';

class Error429Popup {
  static void show(BuildContext context) {
    EducationalPopupWidget.show(
      context,
      EducationalPopup.error429,
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Text(
            context.localization.response429,
            style: context.styles.labelLarge,
            textAlign: TextAlign.center,
          ),
          Divider(height: 30),
          Text(
            '${context.localization.freeApp} ${context.localization.error429desc}',
            style: context.styles.bodySmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
        ],
      ),
      () {},
    );
  }
}
