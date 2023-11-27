import 'package:flutter/material.dart';

const double _elevation = 1;

const appBarTheme = AppBarTheme(
  centerTitle: true,
  elevation: _elevation,
  scrolledUnderElevation: _elevation,
);

const cardTheme = CardTheme(
  elevation: _elevation,
);

const navigationBarTheme = NavigationBarThemeData(
  elevation: _elevation,
);

const dividerTheme = DividerThemeData(
  space: 0,
  thickness: 0.1,
);
