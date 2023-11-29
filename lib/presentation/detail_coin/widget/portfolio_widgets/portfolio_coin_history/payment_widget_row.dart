import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class PaymentRow extends StatelessWidget {
  final String title;
  final String text;
  final Color? color;
  final TextStyle? style;
  const PaymentRow({
    required this.title,
    required this.text,
    this.color,
    this.style,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: (style ?? context.styles.bodyMedium!).copyWith(
            color: color ?? context.colors.onBackground,
          ),
        ),
        Text(
          text,
          style: (style ?? context.styles.bodyMedium!).copyWith(
            color: color ?? context.colors.onBackground,
          ),
        ),
      ],
    );
  }
}
