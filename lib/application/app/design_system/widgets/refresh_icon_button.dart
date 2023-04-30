import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:flutter/material.dart';

class RefreshIconButton extends StatelessWidget {
  final bool loading;
  final VoidCallback onTapUpdate;
  final double rightPadding;

  RefreshIconButton({
    required this.loading,
    required this.onTapUpdate,
    this.rightPadding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: rightPadding),
      child: SizedBox(
        height: 50,
        width: 40,
        child: loading
            ? Center(
                child: SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    color: AppColors.blackLight,
                    strokeWidth: 2,
                  ),
                ),
              )
            : IconButton(
                splashRadius: 20,
                onPressed: onTapUpdate,
                icon: Icon(Icons.refresh, color: AppColors.blackLight),
              ),
      ),
    );
  }
}
