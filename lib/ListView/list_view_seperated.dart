import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewSeperated(),
  ));
}

class ListViewSeperated extends StatelessWidget {
  var month = [
    "January",
    "Februray",
    "March",
    "April",
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Text(
                month[index],
                style: TextStyle(fontSize: 30),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 3 == 0) {
              return Card(
                color: Colors.red,
                child: Text(
                  "Advertisement",
                  style: TextStyle(fontSize: 30),
                ),
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
