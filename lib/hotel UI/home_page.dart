import 'package:assignements_luminar/hotel%20UI/bottom_nav_hotel_UI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HotelUIBottom(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeHotel extends StatelessWidget {
  var imageS1 = [
    'assets/images/hotel1.jpg',
    'assets/images/hotel2.jpg',
    'assets/images/hotel3.jpg'
  ];
  var imageS2 = [
    'assets/images/hotel3.jpg',
    'assets/images/hotel2.jpg',
    'assets/images/hotel1.jpg',
    'assets/images/hotel3.jpg',
    'assets/images/hotel2.jpg'
  ];
  var name1 = ['Hotel Marriott', 'Hotel Raviz', 'The Leela'];
  var nameS2 = [
    'Hotel Marriott',
    'The Leela',
    'Hotel Raviz',
    'Hotel Marriott',
    'Hotel Hill Palace',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ListTile(
        title: const Text('Hi Amos'),
        subtitle: const Text('Find Your Favorite Hotel Here',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(fit: BoxFit.fill, 'assets/images/me edit.png'),
        ),
      )),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.search),
                    label: const Text('Find your Hotel Now'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),
              const ListTile(
                leading: Text(
                  'Popular Hotel',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                    height: 235,
                    width: 600,
                    child: GridView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) => Card(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 96,
                              width: 190,
                              child: Image(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(imageS1[index])),
                            ),
                            Text(
                              name1[index],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text('A five-star Hotel in Kochi'),
                            const ListTile(
                              leading: Text(
                                'Rate \$300',
                                style: TextStyle(fontSize: 15),
                              ),
                              trailing: Wrap(
                                children: [
                                  Text(
                                    '4.8',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200),
                    )),
              ),
              ListTile(
                  leading: const Text(
                    'Hotel Packages',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  trailing: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View all',
                        style: TextStyle(fontSize: 18),
                      ))),
              SingleChildScrollView(
                child: SizedBox(
                    height: 550,
                    width: 450,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) => Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 100,
                            width: 60,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 125,
                                  height: 100,
                                  child: Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage(imageS2[index])),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      nameS2[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text('A five-star Hotel in Kochi'),
                                    const Text('Rate \$280'),
                                    const Wrap(
                                      children: [
                                        Icon(Icons.hotel),
                                        Icon(Icons.wifi),
                                        Icon(Icons.car_rental)
                                      ],
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          bottomLeft: Radius.circular(7)),
                                      child: Container(
                                          height: 65,
                                          width: 28,
                                          color: Colors.blue[400],
                                          child: const Center(
                                            child: Text(
                                              'B\no\no\nk',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
