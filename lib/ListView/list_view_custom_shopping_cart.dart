import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ShoppingCart(),
  ));
}

class ShoppingCart extends StatelessWidget {
  var name = [
    'Apple',
    'Mango',
    'Banana',
    'Grapes',
    'WaterMelon',
    'Kiwi',
    'Orange',
    'Peach',
  ];
  var unit = [
    'Kg',
    'Doz',
    'Kg',
    'Kg',
    'Pcs',
    'Kg',
    'Kg',
    'Kg',
  ];
  var price = ['300', '150', '70', '180', '30', '110', '120', '220'];
  var images = [
    'assets/icons/apple-icon.png',
    'assets/icons/Mango-Illustration-icon.png',
    'assets/icons/bananas-icon.png',
    'assets/icons/Grape-Black-Illustration-icon.png',
    'assets/icons/watermelon-icon.png',
    'assets/icons/Kiwifruit-Illustration-icon.png',
    'assets/icons/Orange-Illustration-icon.png',
    'assets/icons/Peach-Illustration-icon.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 8,
              (context, index) => Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          images[index],
                          height: 85,
                          width: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  children: [
                                    TextSpan(
                                      text: "Name:",
                                    ),
                                    TextSpan(
                                        text: name[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  children: [
                                    TextSpan(
                                      text: "Unit:",
                                    ),
                                    TextSpan(
                                        text: unit[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  children: [
                                    TextSpan(
                                      text: "Price:",
                                    ),
                                    TextSpan(
                                        text: "${price[index]} Rs",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ]),
                            )
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text("Add to Cart",
                              style: TextStyle(color: Colors.white)),
                          shape: RoundedRectangleBorder(),
                          color: Colors.black87,
                        )
                      ],
                    ),
                    color: Colors.blueGrey,
                  ))),
    );
  }
}
