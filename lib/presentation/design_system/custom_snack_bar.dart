import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar(this.text)
      : super(
          duration: Duration(milliseconds: 800),
          content: Text(text),
        );

  final String text;
}
