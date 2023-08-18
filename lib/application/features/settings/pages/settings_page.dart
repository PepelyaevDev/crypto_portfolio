import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/logo_widget.dart';
import 'package:crypto_portfolio/application/features/settings/widgets/contacts_widget.dart';
import 'package:crypto_portfolio/application/features/settings/widgets/language_settings.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: AppColors.primary,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blackLight,
        title: LogoWidget(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              LanguageSettings(),
              SizedBox(height: 20),
              AppInfoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
