import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final double rightPadding;

  AppBarIconButton({
    required this.iconData,
    required this.onTap,
    this.rightPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: rightPadding),
      child: SizedBox(
        height: 50,
        width: 40,
        child: Center(
          child: IconButton(
            splashRadius: 20,
            onPressed: onTap,
            icon: Icon(iconData, color: AppColors.blackLight),
          ),
        ),
      ),
    );
  }
}
