import 'dart:math';

import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var nameS = [
      'Jeni',
      'Ancy',
      'Athulya',
      'Parvathy',
      'Sibin',
      'Rohan',
      'Cibi',
      'Sajin',
      'Adolf',
      'Jibin',
    ];
    var msgS = [
      'ok',
      'hm',
      'hei',
      'ok',
      'hi',
      'da',
      'ok',
      'hlo',
      'kk',
      'okda',
    ];
    var time = [
      '12:21',
      '12:10',
      '11:50',
      '10:45',
      '10:10',
      '10:10',
      '10:8',
      '10:8',
      '10:7',
      '10:1',
    ];
    var imgS = [
      'assets/images/delhi img.jpg',
      'assets/images/delhi img.jpg',
      'assets/images/delhi img.jpg',
      'assets/images/delhi img.jpg',
      'assets/images/moon icon.jpg',
      'assets/images/delhi img.jpg',
      'assets/images/delhi img.jpg',
      'assets/images/delhi img.jpg',
      'assets/images/delhi img.jpg',
      'assets/images/delhi img.jpg',
    ];
    var icnS = [
      Icon(Icons.done, color: Colors.grey),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
      Icon(Icons.done, color: Colors.blue),
    ];

    return Scaffold(
      body: ListView(
        children: List.generate(
          10,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(imgS[index]),
              radius: 30,
            ),
            title: Text(nameS[index]),
            subtitle: Row(
              children: [
                icnS[index],
                Text(msgS[index]),
              ],
            ),
            trailing: Column(
              children: [
                Text(time[index]),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                    radius: 12, backgroundColor: Colors.green, child: Text('1'))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          print('all chat open');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Icon(
          Icons.message,
        ),
      ),
    );
  }
}
