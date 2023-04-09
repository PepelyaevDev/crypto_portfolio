import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  final VoidCallback onTap;

  BackIconButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: IconButton(
        splashRadius: 15,
        onPressed: onTap,
        icon: Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }
}
