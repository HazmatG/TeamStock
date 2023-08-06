import 'package:flutter/material.dart';
import 'package:teamstock/presentation/ui/pages/welcomepage.dart';

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
