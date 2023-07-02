import 'dart:async';
import 'package:crypto_portfolio/application/app/app.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:flutter/material.dart';

//просьба поставить оценку в маркете
//при изменении избранного на других страницах в новостях будет старый список
//поправить кнопки в виджете статистики портфеля (история операции и открытия графика pie)
//процент стейблов, возможность списывать и зщачислять к стейблам
//добавить подсказку как смотреть полные новости
//лицензия syncfusion_flutter_charts либо замена либы

Future<void> main() async {
  final HiveApiClient hiveApiClient = await HiveApiClient.getClient;
  final GeckoApiClient geckoApiClient = GeckoApiClient.getClient;
  final CryptopanicApiClient cryptopanicApiClient = CryptopanicApiClient.getClient;

  runApp(
    CryptoPortfolioApp(
      hiveApiClient: hiveApiClient,
      geckoApiClient: geckoApiClient,
      cryptopanicApiClient: cryptopanicApiClient,
    ),
  );
}
