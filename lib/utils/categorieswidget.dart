import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key, required this.ctgname}) : super(key: key);

  final String ctgname;

  Widget CategoriesWid() {
    Color ctgcolor = Colors.black12;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Ink(
          height: 34,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black26),
            borderRadius: BorderRadius.circular(10),
            color: ctgcolor,
          ),
          child: Center(child: Text("$ctgname")),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CategoriesWid();
  }
}
