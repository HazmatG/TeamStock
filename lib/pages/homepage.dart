import 'package:flutter/material.dart';
import 'package:teamstock/pages/createcardwidget.dart';
import 'package:teamstock/pages/profilepage.dart';

import '../const/colors.dart';
import '../utils/cardwidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // appbar color
    bool isFounder = false;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: 0,
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: isFounder ? pfFounderCol : pfSeekerCol,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(0))),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 240, right: 8),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // image: DecorationImage(
                              //   image: AssetImage('assets/images/mainicon.png'),
                              //     fit: BoxFit.cover,
                              color: Colors.white),
                        )),
                    Text('TeamStock',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Maxwell',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text('Key for victory is teamwork',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Albert',
                              color: Colors.white)),
                    )
                  ],
                ),
                SizedBox(height: 20)
              ],
            )),
      ),
      body: Stack(children: [
        ListView(
          children: [
            SizedBox(height: 35),
            searchBox(),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoriesWidget(ctgname: 'Mobile-App'),
                  CategoriesWidget(ctgname: 'GameDev'),
                  CategoriesWidget(ctgname: 'WebSite'),
                  CategoriesWidget(ctgname: 'Illustration'),
                  CategoriesWidget(ctgname: 'Movie'),
                  CategoriesWidget(ctgname: 'Food'),
                  CategoriesWidget(ctgname: 'Technics'),
                  CategoriesWidget(ctgname: 'Music'),
                ],
              ),
            ),
            Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Newest Flows:',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                )),
            CardWidget(
                pcolor: tdOrange,
                ptext: 'I need team for First Person Shooter',
                paccount: 'gamedev21',
                pdate: 'February 12, 2023, 21:00',
                peoplein: 2),
            CardWidget(
                pcolor: tdGreen,
                ptext: 'I need team for my WebSite',
                paccount: 'webguy009',
                pdate: 'February 12, 2023, 18:00',
                peoplein: 4),
            CardWidget(
                pcolor: tdPurple,
                ptext: 'I need team for my Comics',
                paccount: 'jackie21',
                pdate: 'February 12, 2023, 18:00',
                peoplein: 1),
            CardWidget(
                pcolor: tdBlue,
                ptext: 'I need drummer for my rock-band',
                paccount: 'wombat23',
                pdate: 'February 12, 2023, 18:00',
                peoplein: 2),
            CardWidget(
                pcolor: tdYellow,
                ptext: 'I need team to for my Start-Up',
                paccount: 'skywalk12',
                pdate: 'February 22, 2023, 18:00',
                peoplein: 3),
            CardWidget(
                pcolor: tdRed,
                ptext: 'I need cook to for my Cafe',
                paccount: 'coolcook112',
                pdate: 'February 26, 2023, 18:00',
                peoplein: 1),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
              margin: EdgeInsets.only(bottom: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CreateCardWidget()));
                },
                child: Text('+', style: TextStyle(fontSize: 40)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: tdGreen,
                    minimumSize: Size(70, 70),
                    elevation: 10),
              )),
        )
      ]),
    );
  }

  Widget CategoriesWidget({ctgname}) {
    Color ctgcolor = Colors.black12;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            ctgcolor;
          });
        },
        child: Ink(
          height: 34,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black26),
            borderRadius: BorderRadius.circular(10),
            color: ctgcolor,
          ),
          child: Center(child: Text(ctgname)),
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
          break;
        case 1:
          print('Page 2');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfilePage()));
          break;
      }
    });
  }
}

class searchBox extends StatelessWidget {
  const searchBox

  ({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [ Flexible(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: txtBlack,
                    size: 20,
                  ),
                  prefixIconConstraints: BoxConstraints(
                      maxHeight: 20, minWidth: 22),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: txtBlack)),
            )
        ),
      ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ),
    ]
    );
  }
}