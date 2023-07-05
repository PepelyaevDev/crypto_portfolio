import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/news/widgets/no_currencies_widget.dart';
import 'package:flutter/material.dart';

class NewsDescPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double radius = 5;
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(radius),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 7,
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
                  color: AppColors.grayLight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NoCurrenciesWidget(),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            context.localization.ok,
                            style: AppStyles.normal14.copyWith(color: AppColors.blackLight),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
