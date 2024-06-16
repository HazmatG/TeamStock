import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:teamstock/data/const/colors.dart';

class CreateBoardPage extends StatefulWidget {
  const CreateBoardPage({Key? key}) : super(key: key);

  @override
  _CreateCardWidgetState createState() => _CreateCardWidgetState();
}

class _CreateCardWidgetState extends State<CreateBoardPage> {
  Color _cardcolor = tdGreen;
  final int _prtnum = 1;
  int _prtadd = 1;

  final List<String> _dropDownitems = ['Job Fair', 'Event', 'Hackaton', 'Game Jam', 'Post', 'Article'];
  String selectedItem = 'Job Fair';

  final TextEditingController _titlecont = TextEditingController();
  final TextEditingController _desccont = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: AssetImage('assets/images/app_icons/usericon.png'), radius: 35,),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@azimuth',
                    style: TextStyle(fontSize: 18, fontFamily: 'Albert'),
                  ),
                  Align(
                      alignment: const Alignment(0.9, 0),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Colors.white,
                        ),
                        child: DropdownButton<String>(
                            value: selectedItem,
                            items: _dropDownitems
                                .map((e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                            ))
                                .toList(),
                            onChanged: (e) {
                              setState(() {
                                selectedItem = e!;
                              });
                            }),
                      )),
                ],
              ),
            ],
          )),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              // onChanged: (name) => myuser = myuser.copy(name: name),
              controller: _titlecont,
              decoration: const InputDecoration(
                  hintText: 'Title', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              // onChanged: (bio) => myuser = myuser.copy(bio: bio),
              controller: _desccont,
              maxLines: 4,
              maxLength: 150,
              decoration: const InputDecoration(
                  hintText: 'Short Description', border: OutlineInputBorder()),
            ),
          ),
          buildParty(),
          Align(
            alignment: const Alignment(-0.9, 0),
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  elevation: 0.0,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                child: const Text('+ Add Participant',
                    style: TextStyle(fontSize: 14, color: Colors.black))),
          ),
          Align(
            alignment: const Alignment(-0.9, 0),
            child: ElevatedButton(
                onPressed: () {
                  _pickcolor(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _cardcolor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                child: const Text('Set Color',
                    style: TextStyle(fontSize: 12, color: tdWhite))),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  // _onItemCreated(_titlecont.text, _cardcolor);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _cardcolor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                ),
                child: const Text('Create Board',
                    style: TextStyle(fontSize: 16, color: tdWhite))),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 16),
              )),
          const Center(
            child: Text('By pressing button you\'re accepting our',
                style: TextStyle(fontSize: 16)),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Community Rules',
              )),
        ],
      ),
    );
  }

  Widget buildParty() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(width: 0.7, color: Colors.black38),
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 60,
              child: Text('$_prtnum'),
            ),
            Expanded(
              child: TextFormField(
                  // onChanged: (name) => myuser = myuser.copy(name: name),
                  // controller: namecontroller,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Participant')),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_prtadd > 1) --_prtadd;
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  alignment: Alignment.center,
                  backgroundColor: _cardcolor,
                  minimumSize: const Size(34, 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 5)),
              child: const Text(
                '-',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 25,
              child: Text('$_prtadd'),
            ),
            const SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_prtadd < 8) ++_prtadd;
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5.0))),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.center,
                  backgroundColor: _cardcolor,
                  minimumSize: const Size(34, 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 5)),
              child: const Text(
                '+',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _pickcolor(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) => AlertDialog(
              insetPadding: const EdgeInsets.only(bottom: 225, top: 225),
              title: const Text('Pick your Color'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: BlockPicker(
                        pickerColor: _cardcolor,
                        availableColors: const [
                          tdGreen,
                          tdBlue,
                          tdYellow,
                          tdOrange,
                          tdRed,
                          tdPurple
                        ],
                        onColorChanged: (color) => setState(() {
                              _cardcolor = color;
                              Navigator.pop(context);
                            })),
                  ),
                ],
              ),
            ));
  }

// void _onItemCreated(String item, Color color) {
//   setState(() {
//     NTText(id: DateTime.now().millisecondsSinceEpoch.toString(),
//         pcolor: color,
//         ptitle: item,
//         paccount: '@somerandomguy',
//         pdate: DateTime.now().millisecond.toString());
//   });
//   _titlecont.clear();
// }
}
