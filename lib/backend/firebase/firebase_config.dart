import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCrlFrkOx0mtMMxfe-IIpCpvG5cww4QUFk",
            authDomain: "chasebe-3b7b1.firebaseapp.com",
            projectId: "chasebe-3b7b1",
            storageBucket: "chasebe-3b7b1.appspot.com",
            messagingSenderId: "550795595830",
            appId: "1:550795595830:web:df8888825f4c65f2b78897",
            measurementId: "G-QXCEVY2BDV"));
  } else {
    await Firebase.initializeApp();
  }
}
