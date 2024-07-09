import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCm0BhqhE8mmwGNBTz3DV6FlfRyjhzYcWA",
            authDomain: "saki-taxico.firebaseapp.com",
            projectId: "saki-taxico",
            storageBucket: "saki-taxico.appspot.com",
            messagingSenderId: "1083890357561",
            appId: "1:1083890357561:web:8049aeb268336bfe8284e8"));
  } else {
    await Firebase.initializeApp();
  }
}
