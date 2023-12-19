import 'package:crypto_portfolio/data/firebase_api/app_config.dart';
import 'package:crypto_portfolio/data/firebase_api/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApiClient {
  static Future<AppConfig> get getAppConfig async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    final FirebaseFirestore db = FirebaseFirestore.instance;
    final tokens = await db.collection("Tokens").get();
    return AppConfig.fromFirestore(tokens);
  }
}
