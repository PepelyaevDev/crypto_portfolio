import 'package:crypto_portfolio/common/design_system/popups/educational_popup_widget.dart';
import 'package:crypto_portfolio/common/assets/images/image_paths.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsSourcePopup {
  static void show(BuildContext context, String url) {
    EducationalPopupWidget.show(
      context,
      EducationalPopup.newsSource,
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.localization.clickOnTitleDesc,
            style: context.styles.labelMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.1),
              BlendMode.srcOver,
            ),
            child: Image.asset(ImagePaths.newsInstructionTapHeader.path),
          ),
          Divider(height: 30),
          Text(
            '${context.localization.freeApp} ${context.localization.newsSourceDesc}',
            style: context.styles.bodySmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
        ],
      ),
      () {
        launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
      },
    );
  }
}
