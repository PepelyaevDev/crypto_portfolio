import 'package:crypto_portfolio/common/design_system/buttons/custom_button.dart';
import 'package:crypto_portfolio/common/design_system/popups/base_popup.dart';
import 'package:crypto_portfolio/common/assets/images/image_paths.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class NewsDescPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePopup(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localization.personalNews,
            style: context.styles.titleSmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            context.localization.personalNewsDesc,
            style: context.styles.bodySmall,
          ),
          Divider(height: 30),
          Text(
            context.localization.viewInSource,
            style: context.styles.titleSmall,
          ),
          SizedBox(height: 10),
          Text(
            '1. ${context.localization.clickOnLink}',
            style: context.styles.bodySmall,
          ),
          SizedBox(height: 5),
          ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.05),
                BlendMode.srcOver,
              ),
              child: Image.asset(ImagePaths.newsInstructionTapSource.path)),
          SizedBox(height: 10),
          Text(
            '2. ${context.localization.clickOnTitle}',
            style: context.styles.bodySmall,
          ),
          SizedBox(height: 5),
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.1),
              BlendMode.srcOver,
            ),
            child: Image.asset(ImagePaths.newsInstructionTapHeader.path),
          ),
          SizedBox(height: 15),
          Center(
            child: CustomButton(
              type: ButtonType.primary,
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: context.localization.ok,
            ),
          ),
        ],
      ),
      color: context.colors.primary,
    );
  }
}
