import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teamstock/pages/editprofilepage.dart';
import 'package:teamstock/pages/homepage.dart';
import 'package:teamstock/utils/user_settings.dart';

import '../utils/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  int _selectedIndex = 0;

  Widget build(BuildContext context) {
    final myuser = UserSettings.getUser();

    return Scaffold(
      backgroundColor: Colors.grey[50],
      bottomNavigationBar: SizedBox(
        height: 60,
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
                child: IconButton(onPressed: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                  setState(() {});
                }, icon: Icon(Icons.settings, size: 35,))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/profileicon.png'),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    buildName(myuser),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6),
            buildSpecs(myuser),
            SizedBox(height: 16),
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
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 0.7,
                    color: Colors.black12
                ),
                color: Colors.grey[50],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'About me:',
                    style:
                        TextStyle(fontSize: 18, fontFamily: 'Albert'),
                  ),
                  buildBio(myuser),
                  buildLoc(myuser),
                  buildEdu(myuser)
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
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
          Navigator.pop(context);
          break;
        case 1:
          break;
      }
    });
  }

  Widget buildName(User myuser) => Column(
    children: [
      Text(myuser.name,
          style: TextStyle(fontSize: 24, fontFamily: 'Monsterat')),
      const SizedBox(height: 5),
      Text('@${myuser.proname}', style: TextStyle(fontSize: 18)),
    ],
  );

  Widget buildSpecs(User myuser) => Center(
    child: Text(myuser.proffes,
        style: TextStyle(fontSize: 24, color: Colors.grey[700], fontFamily: 'Albert')),
  );

  Widget buildBio(User myuser) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Text( myuser.bio,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  );

  Widget buildLoc(User myser) => Column(
    children: [
      Text('Location', style: TextStyle(fontSize: 22, color: Colors.grey[700], fontFamily: 'Albert')),
      Text(myser.loc, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ],
  );

  Widget buildEdu(User myser) => Column(
    children: [
      Text('Education', style: TextStyle(fontSize: 22, color: Colors.grey[700], fontFamily: 'Albert')),
      Text(myser.loc, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ],
  );
}
