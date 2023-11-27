import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _MyDiamond(),
        SizedBox(width: 10),
        Text(
          appName,
          style: context.styles.titleSmall,
        ),
      ],
    );
  }
}

class _MyDiamond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(17, 17),
      painter: _MyDiamondPainter(context.colors.primary),
    );
  }
}

class _MyDiamondPainter extends CustomPainter {
  final Color color;
  const _MyDiamondPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    double centerX = size.width / 2;
    double centerY = size.height / 2;

    double halfWidth = size.width / 2;
    double halfHeight = size.height / 2;

    Path path = Path()
      ..moveTo(centerX, centerY - halfHeight)
      ..lineTo(centerX + halfWidth, centerY)
      ..lineTo(centerX, centerY + halfHeight)
      ..lineTo(centerX - halfWidth, centerY)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
