import 'package:assignements_luminar/music%20player/playlist_page.dart';
import 'package:flutter/material.dart';

class MusicHome extends StatefulWidget {
  //const MusicHome({super.key});

  @override
  State<MusicHome> createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  int index = 2;
  var pageS = [
    MusicHome(),
    Center(child: Text('Profile Page \nto be built')),
    FirstPage(),
    Center(child: Text('Profile Page \nto be built')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        currentIndex: index,
        iconSize: 27,
        selectedItemColor: Colors.pinkAccent,
        selectedFontSize: 16,
        unselectedItemColor: Colors.pinkAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home', activeIcon: SizedBox()),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              activeIcon: SizedBox()),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Playlists',
              activeIcon: SizedBox()),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Other',
              activeIcon: SizedBox()),
        ],
        onTap: (tap) {
          setState(() {
            index = tap;
          });
        },
      ),
      body: pageS[index],
    );
  }
}


