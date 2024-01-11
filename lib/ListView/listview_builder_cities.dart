import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewForCities(),
  ));
}

class ListViewForCities extends StatelessWidget {
  var cityName = [
    'Delhi',
    'Finland',
    'London',
    'Vancouver',
    'New York',
    'Munich',
    'Barcelona'
  ];
  var countryName = [
    'India',
    'Europe',
    'Uk',
    'Canada',
    'US',
    'Germany',
    'Spain'
  ];
  var popuNum = ['32.9', '5.54', '8.8', '2.6', '52.1', '10.3', '12.9'];
  var images = [
    'assets/images/delhi img.jpg',
    'assets/images/new york img.png',
    'assets/images/moon icon.jpg',
    'assets/images/delhi img.jpg',
    'assets/images/new york img.png',
    'assets/images/moon icon.jpg',
    'assets/images/new york img.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Cities Around World",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 9, bottom: 7, right: 2, left: 2),
              child: Card(
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      images[index],
                      width: 160,
                      height: 120,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cityName[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          countryName[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        // Text(popuNum[index],style: TextStyle(fontSize: 20),)
                        Text(
                          "Population:${popuNum[index]} mill",
                          style: TextStyle(fontSize: 19),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
