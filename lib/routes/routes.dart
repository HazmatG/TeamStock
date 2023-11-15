import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/pages/createcardwidget.dart';
import 'package:teamstock/pages/editprofilepage.dart';
import 'package:teamstock/pages/founderloginpage.dart';
import 'package:teamstock/pages/founderregpage.dart';
import 'package:teamstock/pages/homepage.dart';
import 'package:teamstock/pages/profilepage.dart';
import 'package:teamstock/pages/seekerloginpage.dart';
import 'package:teamstock/pages/seekerregpage.dart';
import 'package:teamstock/pages/welcomepage.dart';

appRoutes() => [
  GetPage(name: '/welcomepage', page: () => WelcomePage()),
  GetPage(name: '/seeklogpage', page: () => SeekerLoginPage()),
  GetPage(name: '/seekregpage', page: () => SeekerRegisterPage()),
  GetPage(name: '/foundlogpage', page: () => FounderLoginPage()),
  GetPage(name: '/foumdregpage', page: () => FounderRegisterPage()),
  GetPage(name: '/profilepage', page: () => ProfilePage()),
  GetPage(name: '/editprofilepage', page: () => EditProfilePage()),
  GetPage(name: '/createcardwidget', page: () => CreateCardWidget()),
  GetPage(name: '/homepage', page: () => HomePage(isFounder: false)),
];