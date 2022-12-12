import 'package:crypto_portfolio/presentation/design_system/core/duration.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar(this.text)
      : super(
          duration: snackBarDuration,
          content: Text(text),
        );

  final String text;
}
