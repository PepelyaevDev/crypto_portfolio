import 'dart:async';
import 'package:crypto_portfolio/application/app/app.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/hive_api/hive_api_client.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
