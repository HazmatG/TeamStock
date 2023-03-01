import 'package:flutter/material.dart';
import 'package:teamstock/pages/editprofilepage.dart';
import 'package:teamstock/pages/founderloginpage.dart';
import 'package:teamstock/pages/homepage.dart';
import 'package:teamstock/pages/seekerregpage.dart';
import 'package:teamstock/pages/welcomepage.dart';

void main()=>runApp(TeamStock());

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
