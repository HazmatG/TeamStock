import 'package:flutter/material.dart';
import 'package:teamstock/pages/editprofilepage.dart';
import 'package:teamstock/pages/homepage.dart';
import 'package:teamstock/utils/name_settings.dart';

import '../utils/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  int _selectedIndex = 0;
  String _special = '';
  String _pbio = 'Your short bio';

  Widget build(BuildContext context) {
    final myuser = UserSettings.myUser;

    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      //   toolbarHeight: 70,
      //   backgroundColor: Colors.green,
      //   title: Text(_pname, style: TextStyle(fontFamily: 'Albert'),),
      // ),
      backgroundColor: Colors.grey[50],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: 1,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Team'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topRight,
                child: IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                }, icon: Icon(Icons.settings, size: 35,))),
            CircleAvatar(
              backgroundColor: Colors.lightGreen,
              maxRadius: 50,
            ),
            SizedBox(height: 6),
            Column(
              children: [
                buildName(myuser),
              ],
            ),
            SizedBox(height: 12),
            buildSpecs(myuser),
            SizedBox(height: 17),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                color: Colors.grey[50],
              ),
              height: 120,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Projects', style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 8),
                          Text('2'),
                        ],
                      ), color: Colors.grey[100], height: 70, width: 70,),
                      SizedBox(width: 8),
                      Container(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Contacts', style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 8),
                          Text('23'),
                        ],
                      ), color: Colors.grey[100], height: 70, width: 70,),
                      SizedBox(width: 8),
                      Container(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Followers', style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 8),
                          Text('45'),
                        ],
                      ), color: Colors.grey[100], height: 70, width: 70,),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.lightGreen, size: 20),
                      Icon(Icons.star, color: Colors.lightGreen, size: 20),
                      Icon(Icons.star, color: Colors.lightGreen, size: 20),
                      Icon(Icons.star, color: Colors.lightGreen, size: 20),
                      Icon(Icons.star, color: Colors.grey, size: 20),
                      Text('4.2 (242 reviews)')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 0.7,
                    color: Colors.black12
                ),
                color: Colors.grey[50],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About me:',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text( _pbio,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                child: Text(
                  'Contact me:',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/icon4.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(width: 18),
                IconButton(
                  icon: Image.asset('assets/images/icon3.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(width: 18),
                IconButton(
                  icon: Image.asset('assets/images/icon2.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          print('Page 1');
          Navigator.pop(context);
          break;
        case 1:
          print('Page 2');
          break;
      }
    });
  }

  Widget buildName(User myuser) => Column(
    children: [
      Text(myuser.name,
          style: TextStyle(fontSize: 35, fontFamily: 'Albert')),
      const SizedBox(height: 5),
      Text(myuser.proname, style: TextStyle(fontSize: 18)),
    ],
  );

  Widget buildSpecs(User myuser) => Column(
    children: [
      Center(
        child: Text(myuser.proffes,
            style: TextStyle(fontSize: 24, color: Colors.grey[700], fontFamily: 'Albert')),
      ),
    ],
  );
}
