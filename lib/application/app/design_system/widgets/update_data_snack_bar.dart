import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/educational_popups/error_429_popup.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:flutter/material.dart';

Failure? _lastError;

class UpdateDataSnackBar {
  static void show({
    required BuildContext context,
    required Failure? error,
  }) {
    if (ModalRoute.of(context) == null) return;
    if (ModalRoute.of(context)!.isCurrent == false) return;
    if (error == null) {
      if (_lastError != null && DateTime.now().difference(_lastError!.time).inSeconds < 1) {
        return;
      }
    } else {
      _lastError = error;
    }

    ScaffoldMessenger.of(context).clearSnackBars();
    final String message;
    if (error != null) {
      if (error is TooManyRequestsFailure) {
        Error429Popup.show(context);
      }
      message = error.getMessage(context);
    } else {
      message = context.localization.updated;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error == null ? AppColors.greenLight : AppColors.redLight,
        duration: Duration(seconds: error == null ? 1 : 4),
      ),
    );
  }
}
