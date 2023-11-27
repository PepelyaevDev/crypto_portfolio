import 'package:crypto_portfolio/common/design_system/themes/text_theme.dart';
import 'package:crypto_portfolio/common/design_system/themes/widgets_settings.dart';
import 'package:flutter/material.dart';

import 'dark_colors.dart';
import 'light_colors.dart';

class AppTheme {
  static ThemeData _theme(ColorScheme colorScheme) => ThemeData(
        colorScheme: colorScheme,
        appBarTheme: appBarTheme,
        cardTheme: cardTheme,
        navigationBarTheme: navigationBarTheme,
        dividerTheme: dividerTheme,
        textTheme: textTheme,
      );

  static ThemeData get light => _theme(lightColors);
  static ThemeData get dark => _theme(darkColors);
}
