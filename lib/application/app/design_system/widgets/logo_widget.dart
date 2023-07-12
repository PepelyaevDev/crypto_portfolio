import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/consts.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 25,
          child: Image.asset(logoPath),
        ),
        SizedBox(width: 5),
        Text(
          appName,
          style: AppStyles.normal20.copyWith(color: AppColors.grayDark),
        ),
      ],
    );
  }
}
