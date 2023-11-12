import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/settings/bloc/settings_bloc/settings_bloc.dart';
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
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            content,
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
                                    onTap.call();
                                  },
                                  child: Text(
                                    context.localization.ok,
                                    style: AppStyles.normal14.copyWith(color: AppColors.blackLight),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(AppColors.primary),
                                  ),
                                  onPressed: () {
                                    context.read<SettingsBloc>().add(
                                          SettingsEvent.blockEducationalPopup(popup),
                                        );
                                    Navigator.of(context).pop();
                                    onTap.call();
                                  },
                                  child: Text(
                                    context.localization.dontShowAgain,
                                    style: AppStyles.normal14.copyWith(color: AppColors.white),
                                  ),
                                ),
                              ),
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
