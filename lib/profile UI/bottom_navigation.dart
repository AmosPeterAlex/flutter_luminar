import 'package:assignements_luminar/music%20player/home_page.dart';
import 'package:assignements_luminar/music%20player/playlist_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MusicApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MusicApp extends StatefulWidget {
  // const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  int index = 0;
  var screen = [
    MusicHomePage(),
    Text('2nd'),
    FirstPage(),
    Text("hello"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(selectedFontSize: 18,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            activeIcon: SizedBox(),
            icon: Icon(Icons.home, color: Colors.pinkAccent),
            label: "Home",
          ),
          BottomNavigationBarItem(
              activeIcon: SizedBox(),
              icon: Icon(Icons.search, color: Colors.pinkAccent),
              label: "Search"),
          BottomNavigationBarItem(
              activeIcon: SizedBox(),
              icon: Icon(Icons.person, color: Colors.pinkAccent),
              label: "Playlist"),
          BottomNavigationBarItem(
              activeIcon: SizedBox(),
              icon:
                  Icon(Icons.horizontal_split_sharp, color: Colors.pinkAccent),
              label: "More"),
        ],
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.pinkAccent,
      ),
      body: screen[index],
    );
  }
}
