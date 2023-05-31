import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2jqXsAmYC5IMrEJHLTAlZF9LfzBQ2sUY",
            authDomain: "thirsty-32962.firebaseapp.com",
            projectId: "thirsty-32962",
            storageBucket: "thirsty-32962.appspot.com",
            messagingSenderId: "156537805594",
            appId: "1:156537805594:web:29c8b70516af1e47adeaa3",
            measurementId: "G-ZGZJSH8XWL"));
  } else {
    await Firebase.initializeApp();
  }
}
