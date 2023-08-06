import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:teamstock/const/textconst.dart';
import 'package:teamstock/presentation/ui/pages/profilepage.dart';

import '../../../const/colors.dart';
import '../../../utils/cardwidgets.dart';

class HomePage extends StatefulWidget {
  bool isFounder;
  HomePage({Key? key, required this.isFounder}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Color _cardcolor = tdBlue;
  final _boardController = TextEditingController();
  int _selectedIndex = 0;
  final nttlist = NTText.cardList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // appbar color

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
          backgroundColor: widget.isFounder ? pfFounderCol : pfSeekerCol,
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
                SizedBox(height: 25),
                Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Newest Flows:',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    )),
                Divider(
                  thickness: 4,
                  color: Colors.grey[200],
                ),
                for (NTText ntText in nttlist)
                  CardWidget(ntText: ntText)
              ]),
          if (widget.isFounder == true)
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 10,
                        left: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _boardController,
                        decoration: InputDecoration(
                            hintText: 'Add a new board',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 10,
                      ),
                      child: ElevatedButton(
                        child: Icon(Icons.color_lens),
                        onPressed: () {
                          _pickcolor(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _cardcolor,
                          minimumSize: Size(60, 60),
                          elevation: 10,
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                      ),
                      child: ElevatedButton(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        onPressed: () {
                          _addToDoItem(_boardController.text);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: widget.isFounder ? tdBlue : tdGreen,
                          minimumSize: Size(60, 60),
                          elevation: 10,
                        ),
                      ))
                ]))
        ])
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

  void _pickcolor(BuildContext context) {
    showDialog(context: context, builder: (builder) => AlertDialog(
      insetPadding: EdgeInsets.only(bottom: 225, top: 225),
      title: Text('Pick your Color'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: BlockPicker(pickerColor: _cardcolor,
                availableColors: [
                  tdGreen,
                  tdBlue,
                  tdYellow,
                  tdOrange,
                  tdRed,
                  tdPurple
                ],
                onColorChanged: (color) => setState(() {
                  this._cardcolor = color;
                  Navigator.pop(context);
                })),
          ),
        ],
      ),
    ));
  }

  void _addToDoItem(String itemname) {
    setState(() {
      nttlist.insert(0, NTText(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
          pcolor: _cardcolor,
          ptitle: itemname,
          paccount: 'somerandomguy',
          pdate: DateTime.now().millisecond.toString()));
    });
    _boardController.clear();
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
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ]
    );
  }
}