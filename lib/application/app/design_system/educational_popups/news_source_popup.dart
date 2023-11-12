import 'package:crypto_portfolio/application/app/design_system/core/consts.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/educational_popups/educational_popup_widget.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
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
          SizedBox(height: 10),
          Text(
            context.localization.clickOnTitleDesc,
            style: AppStyles.bold18,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.1),
              BlendMode.srcOver,
            ),
            child: Image.asset(tapHeaderPath),
          ),
          Divider(height: 30),
          Text(
            '${context.localization.freeApp} ${context.localization.newsSourceDesc}',
            style: AppStyles.normal14,
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
