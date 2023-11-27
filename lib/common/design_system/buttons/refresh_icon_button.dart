import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

enum RefreshButtonBackground { surface, background }

class RefreshButton extends StatelessWidget {
  final bool loading;
  final RefreshButtonBackground backgroundColor;
  final VoidCallback onTapUpdate;

  RefreshButton({
    required this.loading,
    required this.backgroundColor,
    required this.onTapUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Center(
        child: loading
            ? SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: switch (backgroundColor) {
                    RefreshButtonBackground.surface => context.colors.onSurface,
                    RefreshButtonBackground.background => context.colors.onBackground,
                  },
                  strokeWidth: 2,
                ),
              )
            : IconButton(
                onPressed: onTapUpdate,
                icon: Icon(Icons.refresh),
              ),
      ),
    );
  }
}
