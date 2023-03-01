import 'package:flutter/material.dart';
import 'package:teamstock/pages/profilepage.dart';

import '../utils/name_settings.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late final TextEditingController namecontroller;
  late final TextEditingController pronamecontroller;
  late final TextEditingController speccontroller;
  late final TextEditingController emailcontroller;
  late final TextEditingController biocontroller;
  late final TextEditingController loccontroller;
  final myuser = UserSettings.myUser;


  @override
  void initState() {
    super.initState();

    namecontroller = TextEditingController(text: myuser.name);
    pronamecontroller = TextEditingController(text: myuser.proname);
    speccontroller = TextEditingController(text: myuser.proffes);
    emailcontroller = TextEditingController(text: myuser.email);
    biocontroller = TextEditingController(text: myuser.bio);
    loccontroller = TextEditingController(text: myuser.loc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Edit your profile', style: TextStyle(fontSize: 30, fontFamily: 'Albert'),),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: pronamecontroller,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.green[600],
                  ),
                  hintText: 'Edit your name',
                  labelText: 'Profile Name',
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_remove_alt_1_outlined,
                    color: Colors.green[600],
                  ),
                  hintText: 'Edit your name',
                  labelText: 'Real Name',
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextFormField(
              controller: speccontroller,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.computer,
                    color: Colors.green[600],
                  ),
                  hintText: 'Edit your Speciality',
                  labelText: 'Speciality',
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextFormField(
              controller: biocontroller,
              maxLines: 4,
              maxLength: 150,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.auto_graph,
                    color: Colors.green[600],
                  ),
                  hintText: 'Edit your Bio',
                  labelText: 'Bio',
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextFormField(
              controller: loccontroller,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.location_city,
                    color: Colors.green[600],
                  ),
                  labelText: 'Location',
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfilePage()));
              },
              child: Text('Update Profile', style: TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[800],
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 18),
              )),
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Cancel', style: TextStyle(fontSize: 16),)),
          TextButton(onPressed: () {}, child: Text('Privacy Policy',)),
        ],
      ),
    );
  }
}
