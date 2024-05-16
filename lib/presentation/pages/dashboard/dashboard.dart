import 'package:flutter/material.dart';
import 'package:teamstock/data/const/colors.dart';
import 'package:teamstock/presentation/pages/homepage/homepage.dart';
import 'package:teamstock/presentation/pages/merssagepage/messagepage.dart';
import 'package:teamstock/presentation/pages/notificationpage/notificationpage.dart';
import 'package:teamstock/presentation/pages/settingspage/settingspage.dart';

import '../../widgets/navigation/w_bottom_navigation_bar.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({super.key, required this.isFounder});

  final bool isFounder;
  @override
  _MyDashBoardState createState() => _MyDashBoardState(isFounder: isFounder);
}

class _MyDashBoardState extends State<MyDashBoard> {
  _MyDashBoardState({
    required this.isFounder
});
  int _currentIndex = 0;
  bool isFounder = false;

  final _inactiveColor = Colors.grey;
  final _activeColor = tdBlue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.apps),
          title: const Text('Home'),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.message),
          title: const Text('Messages'),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.notifications_none_outlined),
          title: const Text(
            'Notifications ',
          ),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.settings),
          title: const Text('Settings'),
          activeColor: _activeColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget getBody() {
    List<Widget> pages = [
      HomePage(isFounder: isFounder),
      const MessagePage(),
      const NotificPage(),
      const SettingsPage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}