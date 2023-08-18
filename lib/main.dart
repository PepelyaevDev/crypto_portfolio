import 'dart:async';
import 'package:crypto_portfolio/application/app/app.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:flutter/material.dart';

//просьба поставить оценку в маркете
//возможность списывать и зачислять к стейблам, не вводить сумму сделки в платежах со стейблами
//добавить подсказку как смотреть полные новости
//лицензия syncfusion_flutter_charts либо замена либы
//рассмотреть добавление hive моделей/замена hive на shared_preferences/sqflite

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
