import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView_builder()));
}

class ListView_builder extends StatelessWidget {
  var names = [
    "hello",
    "hai",
    "welcome",
    "good",
    "hello",
    "hai",
    "welcome",
    "hello",
    "hai",
    "welcome","hello", "hai", "welcome",
    "hello","hello", "hai", "welcome","hello", "hai", "welcome",
    "hai","hello", "hai", "welcome",
    "welcome","hello", "hai", "welcome",
    "hello","hello", "hai", "welcome",
    "hai","hello", "hai", "welcome",
    "welcome","hello", "hai", "welcome","hello", "hai", "welcome",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
      ),
      body: ListView.builder(
          itemCount: 40,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.yellow,
              child: Text(names[index]),
            );
          }),
    );
  }
}
