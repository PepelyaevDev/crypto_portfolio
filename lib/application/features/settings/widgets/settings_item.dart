import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatefulWidget {
  final String title;
  final Widget child;

  const SettingItem({
    required this.title,
    required this.child,
  });

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  bool _widgetClose = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {
            setState(() {
              _widgetClose = !_widgetClose;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: AppStyles.normal18.copyWith(color: AppColors.blackLight),
                ),
                Icon(
                  _widgetClose ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                  color: AppColors.primary,
                ),
              ],
            ),
          ),
        ),
        if (!_widgetClose) widget.child,
        if (_widgetClose) SizedBox(height: 5),
      ],
    );
  }
}
