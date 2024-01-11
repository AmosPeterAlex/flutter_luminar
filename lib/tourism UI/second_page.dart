import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: trsmdetail(),
    debugShowCheckedModeBanner: false,
  ));
}

class trsmdetail extends StatelessWidget {
  const trsmdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width - 5.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/images/country1.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 330, top: 10, bottom: 10),
              child: Container(
                child: const Column(children: [
                  Text('Italy',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Italy is a boot-shaped peninsula that juts out of southern Europe into the Adriatic Sea, Tyrrhenian Sea, Mediterranean Sea, and other waters. Its location has played an important role in its history.The sea surrounds Italy, and mountains crisscross the interior, dividing it into regions. The Alps cut across the top of the country and are streaked with long, thin glacial lakes. From the western end of the Alps, the Apennines mountains stretch south down the entire peninsula.West of the Apennines are wooded hills that are home to many of Italys historic cities, including Rome. In the south are hot, dry coastlands and fertile plains where olives, almonds, and figs are grown.'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270, top: 10, bottom: 10),
              child: Container(
                child: const Column(children: [
                  Text('Place to Visit',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ]),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/country2.jpg')),
                        shape: BoxShape.rectangle,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/country3.jpg')),
                        shape: BoxShape.rectangle,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/country4.jpg')),
                        shape: BoxShape.rectangle,
                      )),
                ],
              ),
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width - 5.0,
              onPressed: () {},
              child: const Text('Press to Explore'),
              shape: const StadiumBorder(),
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
