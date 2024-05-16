import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamstock/data/const/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 115,
              child: Card(
                color: tdWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('@madhazmat', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: const Icon(
                      //       Icons.edit,
                      //       size: 25,
                      //     )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                color: tdWhite,
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle_rounded,
                            size: 91,
                          ),
                          Column(
                            children: [
                              Text(
                                'Azatbek Ilichbekov',
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                'last seen recently',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              Text(
                                '01.01.2003 (21)',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              )
                            ],
                          ),
                          // IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Junior Flutter Developer motivated to create interesting high-quality mobile apps.',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 30, vertical: 5),
                      //   child: SizedBox(
                      //     width: 250,
                      //     height: 30,
                      //     child: OutlinedButton(
                      //         style: OutlinedButton.styleFrom(
                      //           backgroundColor: tdGrey,
                      //           side: const BorderSide(width: 1.0, color: tdGrey1),
                      //         ),
                      //         onPressed: () {
                      //           print('hello');
                      //         },
                      //         child: const Text(
                      //           'Edit Profile',
                      //           style: TextStyle(color: txtBlack),
                      //         )),
                      //   ),
                      // ),
                    ],
                  ),
                )),
            const SizedBox(height: 5),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // if you need this
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 2,
                ),
              ),
              color: tdWhite,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_city,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Bishkek, Kyrgyzstan',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Ala-Too International University',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                color: tdWhite,
                child: const Column(
                  children: [
                    Text(
                      'Experience:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'MBank:',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text('(10.01.2022-01.12.2023):',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Apple:',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text('(10.01.2022-01.12.2023):',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                color: tdWhite,
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Skills:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ))),
            Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                color: tdWhite,
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Articles:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ))),
            Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                color: tdWhite,
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Posts:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ))),
            Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                color: tdWhite,
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Links:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ))),
          ],
        ),
      ),
    );
  }
}
