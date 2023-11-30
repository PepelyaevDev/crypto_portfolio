import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, error }

class CustomButton extends StatelessWidget {
  final String text;
  final ButtonType type;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.text,
    required this.type,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final color = switch (type) {
      ButtonType.primary => context.colors.primary,
      ButtonType.secondary => context.colors.onBackground,
      ButtonType.error => context.colors.error,
    };
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: context.colors.background,
        foregroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(baseBorderRadius),
        ),
        side: BorderSide(color: color),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: context.styles.bodySmall!.copyWith(
          color: color,
        ),
      ),
    );
  }
}
