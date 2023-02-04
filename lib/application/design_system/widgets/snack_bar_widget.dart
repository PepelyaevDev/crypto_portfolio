import 'package:flutter/material.dart';

class SnackBarWidget extends SnackBar {
  SnackBarWidget(this.text)
      : super(
          duration: Duration(milliseconds: 800),
          content: Text(text),
        );

  final String text;
}
