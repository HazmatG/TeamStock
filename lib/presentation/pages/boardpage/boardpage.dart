import 'package:flutter/material.dart';
import 'package:teamstock/data/const/colors.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return
          SimpleDialog(
            backgroundColor: tdWhite,
            title:const Text('Apply CV'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:const Text('Level Designer'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('3D Artist'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Screenwriter'),
              ),
            ],
          );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdWhite,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.account_circle_rounded,
                    size: 64,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Epic Nomads',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Isometric 3D Real Time Strategy',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(children: [
                const Text(
                  'Rubeus of the Sea: Part 1 Watercolor Romance Graphic Novel',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
                Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Image.asset(
                      'assets/images/app_images/sample_image.jpg',
                      fit: BoxFit.cover,
                    ))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About Us:',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hidden Door Comics is a collaboration project between two independent comics sisters who share a combined love of fairytales and fantasy art. \n'
                    'We’re back! This is our second endeavor to re-tell our favorite childhood classics as painted graphic novels meant for an older audience. Our 2017 release, \n'
                    'Blue Eyes and the Beastling, was our first Kickstarter success! We have been hinting at this project since and are so excited to finally get the Rubeus party started! You are going to love our clever, shape-shifting merman!\n',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'TeamMates:',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  const TeamMatesWid(workname: 'Level Designer', workercount: 3),
                  const TeamMatesWid(workname: '3D Artist', workercount: 2),
                  const TeamMatesWid(workname: 'Screenwriter', workercount: 1),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          _showMyDialog(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: pfFounderCol,
                          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                        ),
                        child: const Text('Apply CV', style: TextStyle(fontSize: 16, color: Colors.white))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TeamMatesWid extends StatelessWidget {
  const TeamMatesWid({
    super.key,
    required this.workname,
    required this.workercount,
  });

  final String workname;
  final int workercount;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.menu,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                workname,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Text(
            workercount.toString(),
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400),
          ),
          // IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.play_for_work,
          //       size: 30,
          //       color: tdBlue,
          //     ))
        ],
      ),
    );
  }
}


