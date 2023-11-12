import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/consts.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:flutter/material.dart';

class NewsDescPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double radius = 5;
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(radius),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width - 40,
            maxHeight: MediaQuery.sizeOf(context).height * 0.8,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(radius),
                      topRight: Radius.circular(radius),
                    ),
                    color: AppColors.primary,
                  ),
                ),
                Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(radius),
                      bottomRight: Radius.circular(radius),
                    ),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
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
                            child: Image.asset(tapSourcePath)),
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
                          child: Image.asset(tapHeaderPath),
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
