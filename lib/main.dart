import 'dart:async';
import 'package:crypto_portfolio/application/app/app.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:flutter/material.dart';

///TODO: отображение для кейсов, когда вывел из монеты больше чем вложил
///TODO: отображение без интернета
///TODO: добавить добавление даты при создании платежа
///TODO: проверка на продажу большего количества монет чем есть
///TODO: pull refresh на всех страницах
///TODO: общий портфельный виджет и детальная с полной историей
///TODO: библиотека для графиков https://pub.dev/packages/syncfusion_flutter_charts

Future<void> main() async {
  final HiveApiClient hiveApiClient = await HiveApiClient.getClient;
  final GeckoApiClient geckoApiClient = GeckoApiClient.getClient;

  runApp(
    CryptoPortfolioApp(
      hiveApiClient: hiveApiClient,
      geckoApiClient: geckoApiClient,
    ),
  );
}
