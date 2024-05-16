import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/data/const/textconst.dart';
import 'package:teamstock/presentation/pages/dashboard/dashboard.dart';

import '../../../data/const/colors.dart';

class FounderLoginPage extends StatefulWidget {
  const FounderLoginPage({Key? key}) : super(key: key);

  @override
  _FounderLoginPageState createState() => _FounderLoginPageState();
}

class _FounderLoginPageState extends State<FounderLoginPage> {
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
    var _primcolor = pfFounderCol;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: pfFounderCol,
        title: const Text(PresentationTextConst.appname, style: TextStyle(fontFamily: 'Maxwell', fontSize: 30, fontWeight: FontWeight.bold, color: tdWhite)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 240,
            width: 380,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/images/app_images/leader.png'
                    )
                )
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: pfFounderCol
                  ),
                  hintText: 'Enter your email...',
                  labelText: 'Email',
                  border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: pfFounderCol
                  ),
                  hintText: 'Enter password',
                  labelText: 'Password',
                  border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.white.withOpacity(.32);
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
                const Text('Keep me logged in')
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailController.text, password: _passwordController.text).then((value) =>
                Get.toNamed('/dashboard', arguments: {"isFounder": true}));

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: pfFounderCol,
                padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
              ),
              child: const Text('Login', style: TextStyle(fontSize: 16, color: tdWhite))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              )),
          const Text('or connect with',
                  style: TextStyle(fontSize: 18, color: Colors.grey)),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 40),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       IconButton(
          //         icon: Image.asset('assets/images/icon1.png'),
          //         iconSize: 40,
          //         onPressed: () {},
          //       ),
          //       SizedBox(width: 18),
          //       IconButton(
          //         icon: Image.asset('assets/images/icon2.png'),
          //         iconSize: 40,
          //         onPressed: () {},
          //       ),
          //       SizedBox(width: 18),
          //       IconButton(
          //         icon: Image.asset('assets/images/icon3.png'),
          //         iconSize: 40,
          //         onPressed: () {},
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
