import 'package:flutter/material.dart';
import 'package:teamstock/data/const/colors.dart';

class NotificPage extends StatelessWidget {
  const NotificPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Recent'),
      ),
        body: Center(
            child: Text('You have no recent updates', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: tdGrey1),)
        )
    );
  }
}
