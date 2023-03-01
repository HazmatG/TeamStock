import 'package:flutter/material.dart';
import 'package:teamstock/pages/homepage.dart';

class FounderLoginPage extends StatefulWidget {
  const FounderLoginPage({Key? key}) : super(key: key);

  @override
  _FounderLoginPageState createState() => _FounderLoginPageState();
}

class _FounderLoginPageState extends State<FounderLoginPage> {
  bool _keeplogged = false;
  @override
  Widget build(BuildContext context) {
    var _primcolor = Color.fromRGBO(51, 153, 255, 1);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.blue[800],
        title: Text('TeamStock', style: TextStyle(fontFamily: 'Maxwell', fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            height: 240,
            width: 380,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/images/leader.png'
                    )
                )
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.blue[800]
                  ),
                  hintText: 'Enter your email...',
                  labelText: 'Email',
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: Colors.blue[800]
                  ),
                  hintText: 'Enter password',
                  labelText: 'Password',
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.brown.withOpacity(.32);
                        }
                        return _primcolor;
                      }),
                  checkColor: Colors.white,
                  value: _keeplogged,
                  onChanged: (bool? value) {
                    setState(() {
                      _keeplogged = value!;
                    });
                  },
                ),
                Text('Keep me logged in')
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage()));
              },
              child: Text('Login', style: TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              )),
          Center(
              child: Text('or connect with',
                  style: TextStyle(fontSize: 18, color: Colors.grey))),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/icon1.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(width: 18),
                IconButton(
                  icon: Image.asset('assets/images/icon2.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(width: 18),
                IconButton(
                  icon: Image.asset('assets/images/icon3.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
