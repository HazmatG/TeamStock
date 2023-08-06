import 'package:flutter/material.dart';
import 'package:teamstock/presentation/ui/pages/seekerloginpage.dart';
import 'package:teamstock/presentation/ui/pages/seekerregpage.dart';
import '../../../const/colors.dart';
import 'founderloginpage.dart';
import 'founderregpage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: pfFounderCol,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(30))),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(110),
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
                      padding: const EdgeInsets.only(left: 150),
                      child: Text('Find the best team',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text('for your own Start-Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 40)
              ],
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'For Founders:',
              style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
            child: Text(
              'I am a leader in search for like-minded people for my Start-Up', textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Albert'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FounderLoginPage()));
                },
                child: Text('Login', style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: pfFounderCol,
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Do not have an account?',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                child: Text(
                  'Get Free Trial',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FounderRegisterPage()));
                },
              )),
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'For Seekers:',
              style: TextStyle(
                  color: pfSeekerCol,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'I am a person who wants to get work experience and take part in interesting projects', textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Albert'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SeekerLoginPage()));
                },
                child: Text('Login', style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: pfSeekerCol,
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Do not have an account?',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SeekerRegisterPage()));
                  })),
        ],
      ),
    );
  }
}
