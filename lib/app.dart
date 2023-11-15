import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:teamstock/routes/routes.dart';

class TeamStock extends StatelessWidget {
  const TeamStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TeamStock',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcomepage',
      getPages: appRoutes(),
    );
  }
}
