import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teamstock/pages/homepage.dart';
import 'package:teamstock/services/auth.dart';
import 'package:teamstock/utils/const/colors.dart';

class SeekerLoginPage extends StatefulWidget {
  const SeekerLoginPage({Key? key}) : super(key: key);

  @override
  _SeekerLoginPageState createState() => _SeekerLoginPageState();
}

class _SeekerLoginPageState extends State<SeekerLoginPage> {

  final AuthService _authService = AuthService();

  String _seekeremail = '';
  String _seekerpassw = '';

  bool _keeplogged = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var _primcolor = pfSeekerCol;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: pfSeekerCol,
        title: Text('TeamStock', style: TextStyle(fontFamily: 'Maxwell', fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              height: 220,
              width: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/team.jpg'
                  )
                )
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: _emailController,
                onChanged: (value) {
                  setState(() {
                    _seekeremail = value;
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: pfSeekerCol
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
                obscureText: true,
                onChanged: (value) {
                  _seekerpassw = value;
                },
                controller: _passwordController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: pfSeekerCol
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
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailController.text, password: _passwordController.text).then((value) =>
                      Navigator.of(context)
                      .push(MaterialPageRoute(
                      builder: (context) => HomePage(isFounder: false))));
                },
                child: Text('Login', style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: pfSeekerCol,
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                )),
            SizedBox(height: 10),
            Center(
                child: Text('or connect with',
                    style: TextStyle(fontSize: 18, color: Colors.grey))),
            SizedBox(height: 20),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}
