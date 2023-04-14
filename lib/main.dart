import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teamstock/pages/editprofilepage.dart';
import 'package:teamstock/pages/founderloginpage.dart';
import 'package:teamstock/pages/homepage.dart';
import 'package:teamstock/pages/seekerregpage.dart';
import 'package:teamstock/pages/welcomepage.dart';
import 'package:teamstock/utils/user_settings.dart';
import 'package:teamstock/widgets/DropDown.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserSettings.init();
  runApp(TeamStock());
}

class TeamStock extends StatelessWidget {
  const TeamStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeamStock',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
