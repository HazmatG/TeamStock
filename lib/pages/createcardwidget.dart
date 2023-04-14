import 'package:flutter/material.dart';
import 'package:teamstock/pages/profilepage.dart';
import '../const/colors.dart';
import '../utils/user.dart';

import '../utils/user_settings.dart';

class CreateCardWidget extends StatefulWidget {
  const CreateCardWidget({Key? key}) : super(key: key);

  @override
  _CreateCardWidgetState createState() => _CreateCardWidgetState();
}

class _CreateCardWidgetState extends State<CreateCardWidget> {

  int _prtnum = 1;
  int _prtadd = 1;

  TextEditingController _titlecont = TextEditingController();
  TextEditingController _desccont = TextEditingController();
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Create your Board', style: TextStyle(fontSize: 30, fontFamily: 'Albert'),),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              // onChanged: (name) => myuser = myuser.copy(name: name),
              // controller: namecontroller,
              decoration: InputDecoration(
                  hintText: 'Title',
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextFormField(
              // onChanged: (bio) => myuser = myuser.copy(bio: bio),
              // controller: biocontroller,
              maxLines: 4,
              maxLength: 150,
              decoration: InputDecoration(
                  hintText: 'Short Description',
                  border: OutlineInputBorder()),
            ),
          ),
          buildParty(),
          Align(alignment: Alignment(-0.9, 0), child: OutlinedButton(
              onPressed: () {
              },
              child: Text('+ Add Participant', style: TextStyle(fontSize: 14, color: Colors.black)),
              style: OutlinedButton.styleFrom(
                elevation: 0.0,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              )),),
          Align(alignment: Alignment(-0.9, 0), child: ElevatedButton(
              onPressed: () {},
              child: Text('Set Color', style: TextStyle(fontSize: 12)),
              style: ElevatedButton.styleFrom(
                backgroundColor: pfSeekerCol,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              )),),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Create Board', style: TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                backgroundColor: pfSeekerCol,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 18),
              )),
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Cancel', style: TextStyle(fontSize: 16),)),
          Text('By pressing button you\'re accepting our', style: TextStyle(fontSize: 16)),
          TextButton(onPressed: () {}, child: Text('Community Rules',)),
        ],
      ),
    );
  }

  Widget buildParty() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
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
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Participant')
              ),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                if (_prtadd > 1)
                  --_prtadd;
              });
            }, child: Text('-', style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                ),
                alignment: Alignment.center,
                backgroundColor: pfSeekerCol,
                minimumSize: Size(34, 10),
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 5)
            ),),
            Container(
              alignment: Alignment.center,
              width: 25,
              child: Text('$_prtadd'),
            ),
            SizedBox(width: 5),
            ElevatedButton(onPressed: () {
              setState(() {
                if (_prtadd < 8)
                  ++_prtadd;
              });
            }, child: Text('+', style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5.0))
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                alignment: Alignment.center,
                backgroundColor: pfSeekerCol,
                minimumSize: Size(34, 10),
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 5)
            ),)
          ],
        ),
      ),
    );
  }
}
