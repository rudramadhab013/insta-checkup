import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCGZ7FB69dcPSEGuJVx_pJktCWhI1SQalM",
            authDomain: "insta-checkup.firebaseapp.com",
            projectId: "insta-checkup",
            storageBucket: "insta-checkup.appspot.com",
            messagingSenderId: "907594407003",
            appId: "1:907594407003:web:a157d59e430baa6694337e",
            measurementId: "G-3ELPSKHC4Y"));
  } else {
    await Firebase.initializeApp();
  }
}
