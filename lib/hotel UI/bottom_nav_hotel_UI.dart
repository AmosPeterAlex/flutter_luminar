import 'package:assignements_luminar/hotel%20UI/home_page.dart';
import 'package:flutter/material.dart';

class HotelUIBottom extends StatefulWidget {
  const HotelUIBottom({super.key});

  @override
  State<HotelUIBottom> createState() => _HotelUIBottomState();
}

class _HotelUIBottomState extends State<HotelUIBottom> {
  int index = 0;
  var pageS = [
    HomeHotel(),
    const Center(child: Text('Search Page \nto be built')),
    const Center(child: Text('Profile Page \nto be built')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
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
