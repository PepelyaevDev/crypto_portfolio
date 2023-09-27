import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/settings/widgets/settings_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfoWidget extends StatelessWidget {
  static const _email = 'pepelyaev.developer@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.info_outline,
              size: 25,
              color: AppColors.primary,
            ),
            SizedBox(width: 10),
            Text(
              context.localization.additionalInformation,
              style: AppStyles.bold20.copyWith(color: AppColors.blackLight),
            ),
          ],
        ),
        SizedBox(height: 10),
        Ink(
          decoration: AppDecorations.blueBorderDecoration,
          child: Column(
            children: [
              SettingItem(
                title: context.localization.appInformation,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.localization.appDetailInfo1,
                        style: AppStyles.normal14,
                      ),
                      SizedBox(height: 5),
                      Text(
                        context.localization.appDetailInfo2,
                        style: AppStyles.normal14,
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(height: 1),
              ),
              SizedBox(height: 5),
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {
                  launchUrl(Uri(scheme: 'mailto', path: _email));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.localization.email,
                            style: AppStyles.normal18.copyWith(color: AppColors.blackLight),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: Text(
                              _email,
                              style: AppStyles.normal18.copyWith(color: AppColors.primary),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: InkWell(
                          onTap: () async {
                            await Clipboard.setData(ClipboardData(text: _email));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(context.localization.emailAddressCopied),
                                backgroundColor: AppColors.primary,
                                duration: Duration(seconds: 1),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.copy,
                            color: AppColors.primary,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
