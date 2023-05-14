import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:flutter/cupertino.dart';

abstract class AppDecorations {
  static BoxDecoration blueBorderDecoration = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(3),
    boxShadow: [BoxShadow(color: AppColors.blue.withOpacity(0.2), blurRadius: 2)],
  );
}
