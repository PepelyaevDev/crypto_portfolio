import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/base_popup.dart';
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
            style: AppStyles.bold20,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            context.localization.personalNewsDesc,
            style: AppStyles.normal14,
          ),
          Divider(height: 40),
          Text(
            context.localization.viewInSource,
            style: AppStyles.bold20,
          ),
          SizedBox(height: 15),
          Text(
            '1. ${context.localization.clickOnLink}',
            style: AppStyles.normal14,
          ),
          SizedBox(height: 5),
          ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.05),
                BlendMode.srcOver,
              ),
              child: Image.asset(ImagePaths.newsInstructionTapSource.path)),
          SizedBox(height: 15),
          Text(
            '2. ${context.localization.clickOnTitle}',
            style: AppStyles.normal14,
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
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.primary),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  context.localization.ok,
                  style: AppStyles.normal14.copyWith(color: AppColors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      color: AppColors.primary,
    );
  }
}
