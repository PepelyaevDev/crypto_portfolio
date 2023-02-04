import 'dart:async';
import 'package:crypto_portfolio/application/app/app.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  final Box appBox = await Hive.openBox('AppBox');
  final GeckoApiClient geckoApiClient = GeckoApiClient.getClient();
  runApp(
    CryptoPortfolioApp(
      box: appBox,
      geckoApiClient: geckoApiClient,
    ),
  );
}
