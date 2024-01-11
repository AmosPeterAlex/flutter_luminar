/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: TourismHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class TourismHome extends StatefulWidget {
  const TourismHome({super.key});

  @override
  State<TourismHome> createState() => _TourismHome();
}

class _TourismHome extends State<TourismHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ListTile(
                leading: Text(
                  'Popular',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Center(
                child: Container(
                  height: 190.0,
                  width: MediaQuery.of(context).size.width - 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/country1.jpg',),
                          fit: BoxFit.fill)),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 150, left: 15),
                    child: Text(
                      'France',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 190.0,
                    width: MediaQuery.of(context).size.width - 30.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/country2.jpg',),
                            fit: BoxFit.fill)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 150, left: 15),
                      child: Text('Slovenia',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 190.0,
                    width: MediaQuery.of(context).size.width - 30.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/country3.jpg',),
                            fit: BoxFit.fill)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 150, left: 15),
                      child: Text('United States',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 190.0,
                    width: MediaQuery.of(context).size.width - 30.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/country4.jpg'),
                            fit: BoxFit.fill)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 150, left: 15),
                      child: Text('Italy',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
*/
