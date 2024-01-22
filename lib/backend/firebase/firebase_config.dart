import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3ykL8_iHUDEudnO8h8LuIO6MZOXi8A0o",
            authDomain: "proyecto-curricular.firebaseapp.com",
            projectId: "proyecto-curricular",
            storageBucket: "proyecto-curricular.appspot.com",
            messagingSenderId: "491302861643",
            appId: "1:491302861643:web:835629db9c0cf1087306ce",
            measurementId: "G-VYDT45GMTX"));
  } else {
    await Firebase.initializeApp();
  }
}
