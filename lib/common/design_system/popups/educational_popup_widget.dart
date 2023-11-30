import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/design_system/popups/base_popup.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/settings/bloc/settings_bloc/settings_bloc.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EducationalPopupWidget {
  static void show(
    BuildContext context,
    EducationalPopup popup,
    Widget content,
    VoidCallback onTap,
  ) {
    final blocState = context.read<SettingsBloc>().state;
    if (blocState.popupStatus(popup) == EducationalPopupStatus.blocked) {
      onTap.call();
      return;
    }
    showDialog(
      context: context,
      builder: (_) {
        return BasePopup(
          color: context.colors.primary,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              content,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    type: ButtonType.secondary,
                    onPressed: () {
                      Navigator.of(context).pop();
                      onTap.call();
                    },
                    text: context.localization.ok,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    type: ButtonType.primary,
                    onPressed: () {
                      context.read<SettingsBloc>().add(
                            SettingsEvent.blockEducationalPopup(popup),
                          );
                      Navigator.of(context).pop();
                      onTap.call();
                    },
                    text: context.localization.dontShowAgain,
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
