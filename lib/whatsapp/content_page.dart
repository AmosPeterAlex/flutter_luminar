import 'dart:math';

import 'package:assignements_luminar/whatsapp/chat_page.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  // const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 37,
          titleSpacing: 18,

          backgroundColor: Colors.green[700],
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/delhi img.jpg'),
              radius: 15,
            )
          ],
          title: Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
          ),
          bottom: TabBar(tabs: [
            Icon(Icons.groups),
            Icon(Icons.home),
            Text('Updates'),
            Text('Calls'),
          ]),
        ),
        body: TabBarView(children: [
          Center(
              child: Text(
            'New groups Page',
            style: TextStyle(fontSize: 30),
          )),
          ChatPage(),
          Center(child: Text('Status Updates page')),
          Center(child: Text('Calls List')),
        ]),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContentPage(),
  ));
}
