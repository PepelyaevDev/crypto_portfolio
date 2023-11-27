import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:flutter/material.dart';

class MarketDataCard extends StatelessWidget {
  final Widget index;
  final Widget marketCap;
  final Widget price;
  final Widget changes;

  const MarketDataCard({
    required this.index,
    required this.marketCap,
    required this.price,
    required this.changes,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.center,
            child: index,
          ),
        ),
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerLeft,
            child: marketCap,
          ),
        ),
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerRight,
            child: price,
          ),
        ),
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerRight,
            child: changes,
          ),
        ),
        SizedBox(width: marginFromEdgeOfScreen),
      ],
    );
  }
}
