import 'package:flutter/material.dart';

class WatchlistDataCard extends StatelessWidget {
  final Widget? iconButton;
  final Widget marketCap;
  final Widget price;
  final Widget changes;

  const WatchlistDataCard({
    this.iconButton,
    required this.marketCap,
    required this.price,
    required this.changes,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Expanded(
          flex: 6,
          child: Align(
            alignment: Alignment.centerLeft,
            child: marketCap,
          ),
        ),
        Expanded(
          flex: 6,
          child: Align(alignment: Alignment.centerRight, child: price),
        ),
        Expanded(
          flex: 6,
          child: Align(alignment: Alignment.centerRight, child: changes),
        ),
        Expanded(
          flex: 3,
          child: Align(
            child: iconButton,
          ),
        ),
      ],
    );
  }
}
