import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  //const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    var imgS = [
      'assets/images/IMG-20231124-WA0006.jpg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
      'assets/images/IMG-20231124-WA0006_edited.jpeg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg','assets/images/IMG-20231124-WA0006.jpg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
      'assets/images/IMG-20231124-WA0006_edited.jpeg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: Colors.black,
              title: Text('Playlists'),
              titleTextStyle: TextStyle(color: Colors.pinkAccent, fontSize: 32),
              centerTitle: true,
              bottom: AppBar(
                backgroundColor: Colors.black,
                toolbarHeight: 63,
                title: Container(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        suffixIconColor: Colors.pinkAccent,
                        fillColor: Colors.blueGrey[800],
                        filled: true,
                        label: Text(
                          'Search...',
                          style: TextStyle(fontSize: 20),
                        ),
                        hintText: 'type of music',
                        labelStyle: TextStyle(color: Colors.pinkAccent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              )),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.only(top: 28),
                        color: Colors.black,
                        child: Card(
                          margin: EdgeInsets.all(15),
                          color: Colors.purple.shade900,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 180),
                              borderRadius: BorderRadius.circular(30)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                imgS[index],
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                  childCount: 12),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        ],
      ),
    );
  }
}
