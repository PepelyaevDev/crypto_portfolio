import 'package:flutter/material.dart';

//const _blue = Color(0xFF00CED1);
//const _blue = Color(0xFF0095b6);
const _blue = Colors.purple;
const _red = Color(0xFFFA8072);
const _white = Color(0xFFFFFFFF);
const _grayDark = Color(0xFF555555);

final lightColors = ColorScheme(
  brightness: Brightness.light,
  primary: _blue,
  onPrimary: _white,
  secondary: Colors.green,
  onSecondary: _white,
  error: _red,
  onError: _white,
  background: _white,
  onBackground: _grayDark,
  surface: _white,
  onSurface: _grayDark,
);
