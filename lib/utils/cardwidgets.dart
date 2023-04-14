import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.pcolor,
    required this.ptext,
    required this.paccount,
    required this.pdate,
    required this.peoplein,
  }) : super(key: key);

  final Color? pcolor;
  final String ptext;
  final String paccount;
  final String pdate;
  final int peoplein;

  Widget CardWid() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Container(
          height: 75,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 0)),
                  child: Text("$ptext",
                      style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 16.8,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Albert',
                          shadows: <Shadow>[
                            Shadow(offset: Offset(2, 0), color: Colors.black26)
                          ])),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$pdate",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Albert',
                          fontSize: 14,
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(1.3, 0), color: Colors.black26)
                          ]),
                    ),
                    Text(
                      '@$paccount',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Albert',
                          shadows: <Shadow>[
                            Shadow(offset: Offset(2, 0), color: Colors.black26)
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(width: 1, color: Colors.black12),
            color: pcolor,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return CardWid();
  }
}
