import 'package:crypto_portfolio/application/app/utils/extension/context_extension.dart';
import 'package:flutter/material.dart';

class UpdateDataSnackBar {
  static void show({
    required BuildContext context,
    required bool error,
    required String? errorInfo,
  }) {
    final String message;
    if (error) {
      message = errorInfo ?? context.localization.unknownError;
    } else {
      message = context.localization.updated;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
        duration: Duration(seconds: error ? 4 : 1),
      ),
    );
  }
}
