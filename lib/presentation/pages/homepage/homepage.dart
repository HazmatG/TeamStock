import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/data/const/colors.dart';
import '../../../data/const/textconst.dart';

class HomePage extends StatefulWidget {
  bool isFounder;

  HomePage({Key? key, required this.isFounder}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Color _cardcolor = tdBlue;
  final _boardController = TextEditingController();
  // final nttlist = NTText.cardList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // appbar color

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: widget.isFounder ? pfFounderCol : pfSeekerCol,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(120),
                bottomRight: Radius.circular(0))),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 220, right: 8),
                        child: Container(
                          width: 20,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        )),
                    const Text(PresentationTextConst.appname,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Maxwell',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(PresentationTextConst.key1,
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
                const SizedBox(height: 20)
              ],
            )),
      ),
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(height: 35),
          const searchBox(),
          const SizedBox(height: 10),
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
          //   const Padding(
          //       padding:
          //       EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          //       child: Align(
          //         alignment: Alignment.centerLeft,
          //         child: Text('Newest Flows:',
          //             style: TextStyle(
          //                 fontSize: 20, fontWeight: FontWeight.bold)),
          //       )),
          //   Divider(
          //     thickness: 4,
          //     color: Colors.grey[200],
          //   ),
          //   for (NTText ntText in nttlist)
          //     CardWidget(ntText: ntText)
          // ]),
          const BoardWidget(),
          const BoardWidget(),
          const BoardWidget(),
          // if (widget.isFounder == true)
          //   Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Container(
          //             margin: const EdgeInsets.only(
          //               bottom: 20,
          //               right: 20,
          //             ),
          //             child: ElevatedButton(
          //               child: const Text(
          //                 '+',
          //                 style: TextStyle(
          //                   color: tdWhite,
          //                   fontSize: 40,
          //                 ),
          //               ),
          //               onPressed: () {
          //                 // _addToDoItem(_boardController.text);
          //               },
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: widget.isFounder ? tdBlue : tdBlue,
          //                 minimumSize: const Size(60, 60),
          //                 elevation: 10,
          //               ),
          //             ))
          //       )
        ]),
      ),
      floatingActionButton: SizedBox(
        height: 75,
        width: 75,
        child: FittedBox(
          child: FloatingActionButton(
              heroTag: "btn1",
              backgroundColor: tdBlue,
              onPressed: () {
                Get.toNamed('/cbpage');
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              )),
        ),
      ),
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
    showDialog(
        context: context,
        builder: (builder) => const AlertDialog(
              insetPadding: EdgeInsets.only(bottom: 225, top: 225),
              title: Text('Pick your Color'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Flexible(
                  //   child: BlockPicker(pickerColor: _cardcolor,
                  //       availableColors: [
                  //         tdGreen,
                  //         tdBlue,
                  //         tdYellow,
                  //         tdOrange,
                  //         tdRed,
                  //         tdPurple
                  //       ],
                  //       onColorChanged: (color) => setState(() {
                  //         this._cardcolor = color;
                  //         Navigator.pop(context);
                  //       })),
                  // ),
                ],
              ),
            ));
  }

// void _addToDoItem(String itemname) {
//   setState(() {
//     nttlist.insert(0, NTText(
//       id: DateTime.now().millisecondsSinceEpoch.toString(),
//         pcolor: _cardcolor,
//         ptitle: itemname,
//         paccount: 'somerandomguy',
//         pdate: DateTime.now().millisecond.toString()));
//   });
//   _boardController.clear();
// }
}

class BoardWidget extends StatefulWidget {
  const BoardWidget({
    super.key,
  });

  @override
  State<BoardWidget> createState() => _BoardWidgetState();
}

class _BoardWidgetState extends State<BoardWidget> {
  bool isOnFavourites = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 2,
          ),
        ),
        elevation: 0,
        color: tdWhite,
        child: SizedBox(
          width: 380,
          child: Column(
            children: [
              SizedBox(
                  height: 200,
                  width: 400,
                  child: Image.asset(
                    'assets/images/app_images/leader.png',
                    fit: BoxFit.fill,
                  )),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/boardpage');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Furious - First Person Shooter',
                            style: TextStyle(fontSize: 22),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                child: Image.asset(
                                    'assets/images/app_icons/usericon.png'),
                              ),
                              SizedBox(width: 15),
                              const Text(
                                'Epic Nomads',
                                style: TextStyle(fontSize: 16, color: tdGrey2),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(width: 5),
                      IconButton(
                        iconSize: 30,
                          onPressed: () {
                            setState(() {
                              isOnFavourites = !isOnFavourites;
                            });
                          }, icon: isOnFavourites ? const Icon(Icons.turned_in_not, color: tdBlue,) : const Icon(Icons.turned_in, color: tdBlue,))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class searchBox extends StatelessWidget {
  const searchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Flexible(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: txtBlack,
                    size: 20,
                  ),
                  prefixIconConstraints:
                      BoxConstraints(maxHeight: 20, minWidth: 22),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: txtBlack)),
            )),
      ),
      IconButton(
        icon: const Icon(Icons.filter_list),
        onPressed: () {},
      ),
    ]);
  }
}
