import 'package:cloud_firestore/cloud_firestore.dart';

class AppConfig {
  final DataSourceConfig geckoConfig;
  final DataSourceConfig panicConfig;
  const AppConfig({
    required this.geckoConfig,
    required this.panicConfig,
  });

  factory AppConfig.fromFirestore(
    QuerySnapshot<Map<String, dynamic>> tokens,
  ) {
    return AppConfig(
      geckoConfig: DataSourceConfig.fromFirestore(tokens.doc("GeckoConfig")),
      panicConfig: DataSourceConfig.fromFirestore(tokens.doc("PanicConfig")),
    );
  }
}

class DataSourceConfig {
  final String baseUrl;
  final String tokenKey;
  final String tokenValue;
  const DataSourceConfig({
    required this.baseUrl,
    required this.tokenKey,
    required this.tokenValue,
  });

  factory DataSourceConfig.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return DataSourceConfig(
      baseUrl: data?['baseUrl'],
      tokenKey: data?['tokenKey'],
      tokenValue: data?['tokenValue'],
    );
  }
}

extension GetDoc on QuerySnapshot<Map<String, dynamic>> {
  DocumentSnapshot<Map<String, dynamic>> doc(String id) => docs.firstWhere((e) => e.id == id);
}
