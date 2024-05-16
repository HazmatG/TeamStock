import 'package:flutter/material.dart';
import 'package:teamstock/data/const/colors.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdWhite,
      appBar: AppBar(
        backgroundColor: tdWhite,
        automaticallyImplyLeading: false,
        title: Text('Inbox'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
                child: Image.asset('assets/images/app_images/empty.png',)),
            Text('You have no any messages', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: tdGrey1),)
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 75,
        width: 75,
        child: FittedBox(
          child: FloatingActionButton(
              heroTag: "btn2",
              child: Icon(Icons.mark_unread_chat_alt_outlined, color: Colors.white,),
              backgroundColor: tdBlue,
              onPressed: () {}
          ),
        ),
      ),
    );
  }
}
