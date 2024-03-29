import 'package:crypto_portfolio/common/design_system/custom_widgets/logo_widget.dart';
import 'package:crypto_portfolio/presentation/settings/widgets/contacts_widget.dart';
import 'package:crypto_portfolio/presentation/settings/widgets/language_settings.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoWidget(),
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
