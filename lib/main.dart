import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teamstock/app.dart';
import 'infrastructure/firebase/user_settings.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(  apiKey: "AIzaSyAtPpSKmX2KCuTyr6OnQ3t8z1nlial04hQ",
      authDomain: "teamstock-61c52.firebaseapp.com",
      projectId: "teamstock-61c52",
      storageBucket: "teamstock-61c52.appspot.com",
      messagingSenderId: "696054767614",
      appId: "1:696054767614:web:57f82c9bf329a10fa9aaaf",
      measurementId: "G-69FDTJ784J"));
  await UserSettings.init();
  runApp(TeamStock());
}