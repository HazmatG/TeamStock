import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teamstock/infrastructure/firebase/user_settings.dart';

import 'app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserSettings.init();
  runApp(TeamStock());
}