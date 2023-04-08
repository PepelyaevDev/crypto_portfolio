import 'package:flutter/material.dart';

class UpdateDataAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool loading;
  final VoidCallback onTapUpdate;
  final Widget? title;

  UpdateDataAppBar({
    required this.loading,
    required this.onTapUpdate,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.white,
      title: title,
      actions: [
        if (loading)
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Center(
              child: SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 2,
                ),
              ),
            ),
          )
        else
          IconButton(
            splashRadius: 15,
            onPressed: onTapUpdate,
            icon: Icon(Icons.refresh, color: Colors.black),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
