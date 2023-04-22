import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;

  AppBarIconButton({
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 40,
      child: Center(
        child: IconButton(
          splashRadius: 20,
          onPressed: onTap,
          icon: Icon(iconData, color: Colors.black),
        ),
      ),
    );
  }
}
