import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/design_system/popups/base_popup.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class DeletePopup extends StatelessWidget {
  final String title;
  final Widget content;
  final VoidCallback? onTapDelete;

  DeletePopup({
    required this.title,
    required this.content,
    required this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    return BasePopup(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: context.styles.titleSmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          content,
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: onTapDelete == null
                ? [Center(child: _cancelButton(context))]
                : [
                    Expanded(child: _cancelButton(context)),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        type: ButtonType.error,
                        onPressed: onTapDelete!,
                        text: context.localization.delete,
                      ),
                    ),
                  ],
          ),
        ],
      ),
      color: context.colors.error,
    );
  }

  Widget _cancelButton(BuildContext context) => CustomButton(
        type: ButtonType.secondary,
        onPressed: () {
          context.pop();
        },
        text: context.localization.cancel,
      );
}
