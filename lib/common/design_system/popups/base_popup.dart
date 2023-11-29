import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:flutter/material.dart';

class BasePopup extends StatelessWidget {
  final Widget content;
  final Color color;
  const BasePopup({
    required this.content,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(baseBorderRadius),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width - 40,
            maxHeight: MediaQuery.sizeOf(context).height * 0.8,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(baseBorderRadius),
                      topRight: Radius.circular(baseBorderRadius),
                    ),
                    color: color,
                  ),
                ),
                Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(baseBorderRadius),
                      bottomRight: Radius.circular(baseBorderRadius),
                    ),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: content,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
