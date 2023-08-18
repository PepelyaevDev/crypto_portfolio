import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/icons/app_icons.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/settings/bloc/locale_bloc/locale_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_item.dart';

class LanguageSettings extends StatefulWidget {
  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              AppIcons.language,
              size: 25,
              color: AppColors.primary,
            ),
            SizedBox(width: 10),
            Text(
              context.localization.languageSettings,
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
                title: context.localization.appLanguage,
                child: _SelectAppLocaleWidget(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(height: 1),
              ),
              SettingItem(
                title: context.localization.newsLanguage,
                child: _SelectNewsLocaleWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SelectAppLocaleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return Column(
          children: [
            ...state.appSupportedLocales.map(
              (e) {
                final bool selectedLocale = state.appSelectedLocale == e;
                return InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {
                    context.read<LocaleBloc>().add(LocaleEvent.changeAppLocale(e));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Icon(
                          selectedLocale ? Icons.radio_button_checked : Icons.radio_button_off,
                          size: 15,
                          color: AppColors.primary,
                        ),
                        SizedBox(width: 5),
                        Text(
                          e.countryName,
                          style: AppStyles.normal14.copyWith(
                            color: selectedLocale ? AppColors.blackLight : AppColors.gray,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
            SizedBox(height: 5),
          ],
        );
      },
    );
  }
}

class _SelectNewsLocaleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
              child: Text(
                context.localization.selectNewsLanguageDescription,
                style: AppStyles.normal14.copyWith(color: AppColors.gray),
              ),
            ),
            ...state.newsSupportedLocales.map(
              (e) {
                final bool selectedLocale = state.newsSelectedLocales.contains(e);
                return InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {
                    if (state.newsSelectedLocales.length <= 1 && selectedLocale) {
                      return;
                    }
                    final newList = [...state.newsSelectedLocales];
                    if (selectedLocale) {
                      newList.remove(e);
                    } else {
                      newList.add(e);
                    }
                    context.read<LocaleBloc>().add(LocaleEvent.changeNewsLocales(newList));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Icon(
                          selectedLocale ? Icons.check_box : Icons.check_box_outline_blank,
                          size: 15,
                          color: AppColors.primary,
                        ),
                        SizedBox(width: 5),
                        Text(
                          e.countryName,
                          style: AppStyles.normal14.copyWith(
                            color: selectedLocale ? AppColors.blackLight : AppColors.gray,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
            SizedBox(height: 5),
          ],
        );
      },
    );
  }
}
