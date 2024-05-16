import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/data/const/colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdGrey,
      body: ListView(
        children: [
          Container(
            color: tdGreen,
            height: 150,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/images/app_icons/usericon.png'), radius: 30,),
                      Text('Azatbek Ilichbekov', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold)),
                    ],
                  ),
              ),
            ),
          const SizedBox(height: 20),
          const SettingsButton(text: 'My Profile', icons: Icons.person_outline_outlined, pagetitle: '/profpage'),
          const SettingsButton(text: 'Contacts', icons: Icons.contacts_outlined, pagetitle: ''),
          const SettingsButton(text: 'Preferences', icons: Icons.settings_outlined, pagetitle: ''),
          const SettingsButton(text: 'Upgrade to Pro', icons: Icons.upgrade, pagetitle: ''),
        ],
      ),
    );
  }
}

class SettingsButton extends StatefulWidget {
  final String text;
  final String pagetitle;
  final IconData icons;

  const SettingsButton({
    super.key,
    required this.text,
    required this.icons,
    required this.pagetitle,
  });

  @override
  State<SettingsButton> createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(widget.pagetitle);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        height: 60,
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Color(0xFFE3E3E3), width: 2.0))
        ),
        child: Row(
          children: [
            Icon(widget.icons, size: 45),
            const SizedBox(width: 10),
            Text(widget.text, style: const TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
