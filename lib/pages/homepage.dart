import 'package:flutter/material.dart';
import 'package:teamstock/pages/createcardwidget.dart';
import 'package:teamstock/pages/profilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.green, width: 1.5, style: BorderStyle.solid)),
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateCardWidget()));
          },
          backgroundColor: Colors.green[600],
          child: Icon(Icons.add),
        ),
      ),
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
              label: 'People',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.green[700],
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
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search For',
              ),
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoriesWidget(ctgname: 'Mobile-Apps'),
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Newest Flows:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ],
              )),
          CardWidget(
              pcolor: Colors.orangeAccent,
              ptext: 'I need team for First Person Shooter',
              paccount: 'gamedev21',
              pdate: 'February 12, 2023, 21:00',
              peoplein: 2),
          CardWidget(
              pcolor: Colors.green[700],
              ptext: 'I need team for my WebSite',
              paccount: 'webguy009',
              pdate: 'February 12, 2023, 18:00',
              peoplein: 4),
          CardWidget(
              pcolor: Colors.purple[700],
              ptext: 'I need team for my Comics',
              paccount: 'jackie21',
              pdate: 'February 12, 2023, 18:00',
              peoplein: 1),
          CardWidget(
              pcolor: Colors.blueGrey,
              ptext: 'I need drummer for my rock-band',
              paccount: 'wombat23',
              pdate: 'February 12, 2023, 18:00',
              peoplein: 2),
          CardWidget(
              pcolor: Colors.yellow[700],
              ptext: 'I need team to for my Start-Up',
              paccount: 'skywalk12',
              pdate: 'February 22, 2023, 18:00',
              peoplein: 3),
          CardWidget(
              pcolor: Colors.red[700],
              ptext: 'I need cook to for my Cafe',
              paccount: 'coolcook112',
              pdate: 'February 26, 2023, 18:00',
              peoplein: 1),
        ],
      ),
    );
  }

  Widget CardWidget({pcolor, ptext, paccount, pdate, peoplein}) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Container(
          height: 75,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 0)),
                  child: Text(ptext,
                      style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 16.8,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Albert',
                          shadows: <Shadow>[
                            Shadow(offset: Offset(2, 0), color: Colors.black26)
                          ])),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pdate,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Albert',
                          fontSize: 14,
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(1.3, 0), color: Colors.black26)
                          ]),
                    ),
                    Text(
                      '@$paccount',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Albert',
                          shadows: <Shadow>[
                            Shadow(offset: Offset(2, 0), color: Colors.black26)
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(width: 1, color: Colors.black12),
            color: pcolor,
          ),
        ));
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