import 'package:flutter/material.dart';

import 'colors.dart';

class NTText {
  String? id;
  Color? pcolor;
  String? ptitle;
  String? paccount;
  String? pdate;

  NTText({
    required this.id,
    required this.pcolor,
    required this.ptitle,
    required this.paccount,
    required this.pdate,
});
  static List<NTText> cardList() {
    return [
      NTText(
        id: '1',
        pcolor: tdGreen,
        ptitle: 'I need team for my WebSite',
        paccount: 'webguy009',
        pdate: 'February 12, 2023, 18:00',),
      NTText(
        id: '2',
        pcolor: tdPurple,
        ptitle: 'I need team for my Comics',
        paccount: 'jackie21',
        pdate: 'February 12, 2023, 18:00',),
      NTText(
        id: '3',
        pcolor: tdBlue,
          ptitle: 'I need drummer for my rock-band',
          paccount: 'wombat23',
          pdate: 'February 12, 2023, 18:00',),
      NTText(
        id: '4',
        pcolor: tdYellow,
        ptitle: 'I need team to for my Start-Up',
        paccount: 'skywalk12',
        pdate: 'February 22, 2023, 18:00',),
      NTText(
        id: '5',
        pcolor: tdRed,
        ptitle: 'I need team to for my Start-Up',
        paccount: 'skywalk12',
        pdate: 'February 22, 2023, 18:00',),
    ];
  }
}