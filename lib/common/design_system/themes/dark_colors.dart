import 'package:flutter/material.dart';

const _blue = Color(0xFF0095b6);
const _green = Color(0xFF50C878);
const _red = Color(0xFFFA8072);
const _white = Color(0xFFFFFFFF);
const _grayDark = Color(0xFF555555);

final darkColors = ColorScheme(
  brightness: Brightness.dark,
  primary: _blue,
  onPrimary: _white,
  secondary: _green,
  onSecondary: _white,
  error: _red,
  onError: _white,
  background: _white,
  onBackground: _grayDark,
  surface: _white,
  onSurface: _grayDark,
);
