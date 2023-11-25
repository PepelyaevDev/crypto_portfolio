import 'dart:async';
import 'package:crypto_portfolio/common/di/app_data_source.dart';
import 'package:crypto_portfolio/common/di/root_bloc_provider.dart';
import 'package:crypto_portfolio/common/di/root_repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/presentation/bottom_navigation/page/bottom_navigation_page.dart';
import 'package:crypto_portfolio/presentation/settings/bloc/locale_bloc/locale_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final AppDataSource appDataSource = await AppDataSource.getInstance;

  runApp(
    RootRepositoryProvider(
      appDataSource: appDataSource,
      child: RootBlocProvider(
        child: Builder(builder: (context) {
          return BlocBuilder<LocaleBloc, LocaleState>(
            builder: (context, state) {
              return MaterialApp(
                locale: Locale(state.appSelectedLocale.name),
                theme: ThemeData(
                  useMaterial3: false,
                  colorScheme: ColorScheme.fromSwatch().copyWith(
                    primary: AppColors.primary,
                  ),
                ),
                debugShowCheckedModeBanner: false,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                home: const BottomNavigationPage(),
              );
            },
          );
        }),
      ),
    ),
  );
}
