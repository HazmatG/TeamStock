import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/data/const/routes.dart';

class TeamStock extends StatelessWidget {
  const TeamStock({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TeamStock',
      debugShowCheckedModeBanner: false,
      getPages: appRoutes(),
      initialRoute: '/',
    );
  }
}