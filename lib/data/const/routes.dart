import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:teamstock/presentation/pages/createboardpage/createboardpage.dart';
import 'package:teamstock/presentation/pages/dashboard/dashboard.dart';
import 'package:teamstock/presentation/pages/settingspage/settingspage.dart';
import 'package:teamstock/presentation/pages/welcomepage/welcomepage.dart';
import '../../presentation/pages/boardpage/boardpage.dart';
import '../../presentation/pages/homepage/homepage.dart';
import '../../presentation/pages/loginpage/founderloginpage.dart';
import '../../presentation/pages/loginpage/seekerloginpage.dart';
import '../../presentation/pages/merssagepage/messagepage.dart';
import '../../presentation/pages/notificationpage/notificationpage.dart';
import '../../presentation/pages/profilepage/profilepage.dart';
import '../../presentation/pages/registerpage/founderregpage.dart';
import '../../presentation/pages/registerpage/seekerregpage.dart';


appRoutes() => [
  GetPage(name: '/', page: () => const WelcomePage()),
  GetPage(name: '/dashboard', page: () => const MyDashBoard(isFounder: true)),

  GetPage(name: '/homepage', page: () => HomePage(isFounder: false,)),
  GetPage(name: '/messpage', page: () => const MessagePage()),
  GetPage(name: '/notspage', page: () => const NotificPage()),
  GetPage(name: '/settingspage', page: () => const SettingsPage()),

  GetPage(name: '/foundlogpage', page: () => const FounderLoginPage()),
  GetPage(name: '/seeklogpage', page: () => const SeekerLoginPage()),
  GetPage(name: '/foundregpage', page: () => const FounderRegisterPage()),
  GetPage(name: '/seekregpage', page: () => const SeekerRegisterPage()),

  GetPage(name: '/profpage', page: () => const ProfilePage()),
  GetPage(name: '/cbpage', page: () => const CreateBoardPage()),
  GetPage(name: '/boardpage', page: () => const BoardPage()),
  // GetPage(name: '/prefpage', page: () => PreferencesPage()),
];