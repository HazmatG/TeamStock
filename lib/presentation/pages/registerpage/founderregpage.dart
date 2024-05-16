import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/const/colors.dart';
import '../homepage/homepage.dart';

class FounderRegisterPage extends StatefulWidget {
  const FounderRegisterPage({Key? key}) : super(key: key);

  @override
  _FounderRegisterPageState createState() => _FounderRegisterPageState();
}

class _FounderRegisterPageState extends State<FounderRegisterPage> {
  // final AuthService _authService = AuthService();

  String _seekeremail = '';
  String _seekerpassw = '';

  bool _keeplogged = false;
  final _formkey = GlobalKey<FormState>();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _realnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _realnameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _primcolor = const Color.fromRGBO(0, 102, 0, 1);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 25),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('TeamStock',
                      style: TextStyle(
                          fontFamily: 'Maxwell',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: tdBlue)),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 180,
                  width: 340,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/app_images/leader.png'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: _realnameController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.people,
                                color: pfFounderCol
                              ),
                              hintText: 'Enter your real name',
                              labelText: 'Company Name',
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'This field is required';
                          },
                        ),
                      ),
                      const SizedBox(width: 13),
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: pfFounderCol,
                              ),
                              hintText: 'lowercase',
                              prefixText: '@',
                              labelText: 'ProfileName',
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'This field is required';
                            else if (value.contains(RegExp(r'[A-Z]')))
                              return 'only lowercase permitted';
                          },
                        ),
                      ),
                    ],
                  ),
                ),
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
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'This field is required';
                      else if (!value.contains('@')) return 'invalid email';
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: pfFounderCol
                          ),
                          hintText: 'Enter password',
                          labelText: 'Password',
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'This field is required';
                        else if (value.length < 8)
                          return 'minimum 8 characters required';
                      }),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: pfFounderCol
                        ),
                        hintText: 'Confirm Password',
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'This field is required';
                      else if (value.length < 8)
                        return 'minimum 8 characters required';
                      else if (value != _passwordController.text)
                        return 'Password do not match';
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text)
                            .then((value) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                              builder: (context) => HomePage(isFounder: true)))
                              .onError((error, stackTrace) =>
                              print('Error ${error.toString()}'));
                        });
                      }
                    },
                    child: const Text('Register', style: TextStyle(fontSize: 16, color: tdWhite)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: pfFounderCol,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                    )),
                const SizedBox(height: 7),
                const Center(
                    child: Text('or connect with',
                        style: TextStyle(fontSize: 18, color: Colors.grey))),
                const SizedBox(height: 7),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     IconButton(
                //       icon: Image.asset('assets/images/icon4.png'),
                //       iconSize: 40,
                //       onPressed: () {},
                //     ),
                //     const SizedBox(width: 18),
                //     IconButton(
                //       icon: Image.asset('assets/images/icon2.png'),
                //       iconSize: 40,
                //       onPressed: () {},
                //     ),
                //     const SizedBox(width: 18),
                //     IconButton(
                //       icon: Image.asset('assets/images/icon3.png'),
                //       iconSize: 40,
                //       onPressed: () {},
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
