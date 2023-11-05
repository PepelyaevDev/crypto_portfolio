import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/educational_popups/educational_popup_widget.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/settings/bloc/settings_bloc/settings_bloc.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Error429Popup {
  static void show(BuildContext context) {
    final blocState = context.read<SettingsBloc>().state;
    if (blocState.popupStatus(EducationalPopup.error429) == EducationalPopupStatus.blocked) {
      return;
    }
    EducationalPopupWidget.show(
      context,
      EducationalPopup.error429,
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Text(
            context.localization.response429,
            style: AppStyles.bold18,
            textAlign: TextAlign.center,
          ),
          Divider(height: 30),
          Text(
            context.localization.error429desc,
            style: AppStyles.normal14,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
