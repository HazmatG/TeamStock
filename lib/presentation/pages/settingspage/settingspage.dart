import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/data/const/colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdWhite,
      body: ListView(
        children: [
          Container(
            color: pfSeekerCol,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(backgroundImage: AssetImage('assets/images/app_icons/usericon.png'), radius: 30,),
                      const SizedBox(width: 10),
                      const Text('@azimuth', style: TextStyle(fontSize: 22, color: Colors.white)),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: const Text('Get Pro', style: TextStyle(color: Colors.white, fontSize: 16),),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: tdGreen
                        ),
                      )
                    ],
                  ),
              ),
            ),
          const SizedBox(height: 20),
          const SettingsButton(text: 'My Profile', icons: Icons.person_outline_outlined, pagetitle: '/profpage'),
          const SettingsButton(text: 'Contacts', icons: Icons.contacts_outlined, pagetitle: ''),
          const SettingsButton(text: 'Preferences', icons: Icons.settings_outlined, pagetitle: ''),
          const SettingsButton(text: 'Log Out', icons: Icons.logout_outlined, pagetitle: '', textcolor: Colors.red,),
        ],
      ),
    );
  }
}

class SettingsButton extends StatefulWidget {
  final String text;
  final String pagetitle;
  final IconData icons;
  final Color textcolor;

  const SettingsButton({
    super.key,
    required this.text,
    required this.icons,
    required this.pagetitle,
    this.textcolor = Colors.black,
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
        ),
        child: Row(
          children: [
            Icon(widget.icons, size: 45, color: widget.textcolor,),
            const SizedBox(width: 10),
            Text(widget.text, style: TextStyle(fontSize: 22, color: widget.textcolor)),
          ],
        ),
      ),
    );
  }
}
