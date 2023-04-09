import 'package:flutter/material.dart';

class RefreshIconButton extends StatelessWidget {
  final bool loading;
  final VoidCallback onTapUpdate;

  RefreshIconButton({
    required this.loading,
    required this.onTapUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: loading
          ? Center(
              child: SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 2,
                ),
              ),
            )
          : IconButton(
              splashRadius: 15,
              onPressed: onTapUpdate,
              icon: Icon(Icons.refresh, color: Colors.black),
            ),
    );
  }
}
