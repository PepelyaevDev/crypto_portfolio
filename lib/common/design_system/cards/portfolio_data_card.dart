import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:flutter/material.dart';

class PortfolioDataCard extends StatelessWidget {
  final Widget? coin;
  final Widget name;
  final Widget holdings;
  final Widget button;

  const PortfolioDataCard({
    this.coin,
    required this.name,
    required this.holdings,
    required this.button,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: marginFromEdgeOfScreen),
        Expanded(
          flex: 2,
          child: Align(
            child: coin,
          ),
        ),
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerLeft,
            child: name,
          ),
        ),
        Expanded(
          flex: 10,
          child: Align(
            alignment: Alignment.centerRight,
            child: holdings,
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            child: button,
          ),
        ),
        SizedBox(width: marginFromEdgeOfScreen),
      ],
    );
  }
}
