import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final bool ink;
  const PrimaryContainer({required this.child, this.ink = false});
  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      color: context.colors.background,
      borderRadius: BorderRadius.circular(baseBorderRadius),
      boxShadow: [
        BoxShadow(
          color: context.colors.primary.withOpacity(0.5),
          blurRadius: 1,
        ),
      ],
    );
    if (ink) {
      return Ink(
        decoration: decoration,
        child: child,
      );
    }
    return DecoratedBox(
      decoration: decoration,
      child: child,
    );
  }
}
