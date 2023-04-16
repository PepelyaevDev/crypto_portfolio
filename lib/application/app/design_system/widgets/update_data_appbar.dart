import 'package:flutter/material.dart';

class BottomAppbarWidget {
  final Widget child;
  final double height;
  const BottomAppbarWidget({
    required this.child,
    required this.height,
  });
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leftWidget;
  final Widget? centerWidget;
  final Widget? rightWidget;
  final BottomAppbarWidget? bottomAppbarWidget;

  CustomAppBar({
    this.leftWidget,
    this.centerWidget,
    this.rightWidget,
    this.bottomAppbarWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: bottomAppbarWidget == null ? 50 : 50 + bottomAppbarWidget!.height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 3)],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: leftWidget ?? SizedBox(),
                  ),
                ),
                Expanded(child: centerWidget ?? SizedBox()),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: rightWidget ?? SizedBox(),
                  ),
                ),
              ],
            ),
          ),
          if (bottomAppbarWidget != null) bottomAppbarWidget!.child,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(
        double.infinity,
        bottomAppbarWidget == null ? 50 : 50 + bottomAppbarWidget!.height,
      );
}
