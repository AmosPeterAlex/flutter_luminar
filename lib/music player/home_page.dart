import 'package:flutter/material.dart';

class MusicHomePage extends StatelessWidget {
  // const MusicHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var imag1 = [
      'assets/images/IMG-20231124-WA0006.jpg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
    ];
    var images2 = [
      'assets/images/IMG-20231124-WA0006.jpg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
      'assets/images/IMG-20231124-WA0006_edited.jpeg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
      'assets/images/IMG-20231124-WA0006.jpg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
      'assets/images/IMG-20231124-WA0006_edited.jpeg',
      'assets/images/IMG-20231124-WA0008.jpg',
      'assets/images/IMG-20231124-WA0009.jpg',
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Musify.",
            style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 35,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 25,
            ),
            Text('Sugested playlist',
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 200,
                  width: 500,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Image.asset(imag1[index]),
                          shape: OutlineInputBorder(),
                        );
                      })),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Recommended for you",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              child: Container(
                  height: 500,
                  width: 500,
                  child: ListView.builder(
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return ListTile(
                            // tileColor: Colors.white,
                            leading: Image.asset(images2[index]),
                            title: Text("Song Name",
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text("Artist Name",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            trailing: Wrap(
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.pinkAccent,
                                ),
                                Icon(
                                  Icons.download,
                                  color: Colors.pinkAccent,
                                ),
                              ],
                            ));
                      })),
            )
          ],
        ),
      ),
    );
  }
}
