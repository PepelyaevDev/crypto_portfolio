import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:flutter/material.dart';

class UpdateDataAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool loading;
  final DateTime updateTime;
  final VoidCallback onTapUpdate;
  UpdateDataAppBar({
    required this.loading,
    required this.updateTime,
    required this.onTapUpdate,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('${context.localization.updated}: ${updateTime.time}'),
      actions: [
        if (loading)
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Center(
              child: SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              ),
            ),
          )
        else
          IconButton(
            onPressed: onTapUpdate,
            icon: Icon(Icons.refresh),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
