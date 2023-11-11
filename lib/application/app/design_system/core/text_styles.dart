import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static final Color _defaultColor = AppColors.blackLight;

  static final TextStyle bold14 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: _defaultColor);
  static final TextStyle bold16 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: _defaultColor);
  static final TextStyle bold18 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: _defaultColor);
  static final TextStyle bold20 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: _defaultColor);
  static final TextStyle bold22 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: _defaultColor);
  static final TextStyle bold30 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 30, color: _defaultColor);

  static final TextStyle normal14 = TextStyle(fontSize: 14, color: _defaultColor);
  static final TextStyle normal16 = TextStyle(fontSize: 16, color: _defaultColor);
  static final TextStyle normal18 = TextStyle(fontSize: 18, color: _defaultColor);
  static final TextStyle normal20 = TextStyle(fontSize: 20, color: _defaultColor);
}
