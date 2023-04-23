import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:flutter/material.dart';

class UpdateDataSnackBar {
  static void show({
    required BuildContext context,
    required bool error,
    required String? errorInfo,
  }) {
    if (ModalRoute.of(context) == null) return;
    if (ModalRoute.of(context)!.isCurrent == false) return;
    final String message;
    if (error) {
      message = errorInfo ?? context.localization.unknownError;
    } else {
      message = context.localization.updated;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? AppColors.red : AppColors.green,
        duration: Duration(seconds: error ? 4 : 1),
      ),
    );
  }
}
