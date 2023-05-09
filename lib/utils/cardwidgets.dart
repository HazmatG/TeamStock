import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teamstock/const/textconst.dart';

class CardWidget extends StatelessWidget {
  final NTText ntText;

  const CardWidget({
    Key? key,
    required this.ntText
  }) : super(key: key);

  Widget CardWid() {
    String now = DateFormat("dd-MM-yyyy").format(DateTime.now());

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
                  child: Text("${ntText.ptitle!}",
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
                      "${now}",
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
                      '@${ntText.paccount!}',
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
            color: ntText.pcolor!,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return CardWid();
  }
}
