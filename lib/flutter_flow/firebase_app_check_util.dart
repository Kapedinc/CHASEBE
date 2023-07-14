import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: '6LdGTw4nAAAAAKInNj-nWO4G0yjj0O70FCMHN-xu',
      androidProvider: AndroidProvider.playIntegrity,
    );
