import 'package:crypto_portfolio/data/source/local/hive/core/hive_init.dart';
import 'package:crypto_portfolio/data/di/data_di.dart';
import 'package:crypto_portfolio/domain/di/domain_di.dart';
import 'package:crypto_portfolio/presentation/di/presentation_di.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/ui/pages/portfolio_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  await HiveInit.call();
  DataDi.call();
  DomainDi.call();
  PresentationDi.call();
  runApp(CryptoPortfolioApp());
}

class CryptoPortfolioApp extends StatelessWidget {
  CryptoPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: PortfolioPage(),
    );
  }
}

// добавить работу с ошибками и ейзеры
// если не получается взять данные с сервера показывать локальные и показать сообщение
// показывать контент во время закгрузки
// генерация диай
