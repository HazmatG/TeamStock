import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/data/const/colors.dart';
import 'package:teamstock/data/const/textconst.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: pfFounderCol,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(120))),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
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
                              shape: BoxShape.circle,
                              color: Colors.white),
                        )),
                    const Text(PresentationTextConst.appname,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Maxwell',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(PresentationTextConst.key1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22)),
                  ),
                ),
                const SizedBox(height: 10)
              ],
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'For Founders:',
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
            child: Text(
              PresentationTextConst.loginforfounders, textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Albert'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/foundlogpage');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: pfFounderCol,
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                ),
                child: const Text(PresentationTextConst.login, style: TextStyle(fontSize: 16, color: Colors.white))),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              PresentationTextConst.noaccount,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                child: const Text(
                  PresentationTextConst.signup,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Get.toNamed('/foundregpage');
                },
              )),
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'For Seekers:',
              style: TextStyle(
                  color: pfSeekerCol,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              PresentationTextConst.loginforseekers, textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Albert')
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/seeklogpage');
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => SeekerLoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: pfSeekerCol,
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                ),
                child: const Text(PresentationTextConst.login, style: TextStyle(fontSize: 16, color: Colors.white))),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              PresentationTextConst.noaccount,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                  child: const Text(
                    PresentationTextConst.signup,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Get.toNamed('/seekregpage');
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => SeekerRegisterPage()));
                  })),
        ],
      ),
    );
  }
}