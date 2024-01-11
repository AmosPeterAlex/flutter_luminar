import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var icnS = [
      Icon(
        Icons.home,
        size: 33,
        color: Colors.blueAccent,
      ),
      Icon(
        Icons.home,
        size: 33,
        color: Colors.blueAccent,
      ),
      Icon(
        Icons.phone,
        size: 33,
        color: Colors.blueAccent,
      ),
      Icon(
        Icons.money,
        size: 33,
        color: Colors.blueAccent,
      ),
      Icon(
        Icons.home,
        size: 33,
        color: Colors.blueAccent,
      ),
      Icon(
        Icons.pages,
        size: 33,
        color: Colors.blueAccent,
      ),
      Icon(
        Icons.home,
        size: 33,
        color: Colors.blueAccent,
      ),
      Icon(
        Icons.home,
        size: 33,
        color: Colors.blueAccent,
      ),
    ];
    var textS = [
      'hiii',
      'hiii',
      'hiii',
      'hiii',
      'hiii',
      'hiii',
      'hiii',
      'hiii'
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            toolbarHeight: 220,
            title: Stack(children: [
              Image.asset('assets/images/gpay cover crop.jpg'),
              Positioned(
                height: 64,
                width: 264,
                top: 15,
                left: 34,
                child: TextField(
                    onTap: () {},
                    maxLength: 12,
                    decoration: InputDecoration(
                        label: Text('Search'),
                        filled: true,
                        fillColor: Colors.grey[300],
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),
              Positioned(
                height: 42,
                width: 42,
                top: 18,
                right: 5,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/images/moon icon.jpg'),
                ),
              ),
            ]),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                        padding: EdgeInsets.only(
                          top: 30,
                        ),
                        color: Colors.black,
                        child: Column(
                          children: [
                            icnS[index],
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              textS[index],
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                  childCount: 8),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4)),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  childCount: 2,
                  (context, index) => Container(
                        color: Colors.black,
                        padding: EdgeInsets.only(
                            top: 25, bottom: 30, right: 13, left: 10),
                        child: MaterialButton(
                          child: Text(
                            'Some random Texts \nto be refractored',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          color: Colors.black26,
                          height: 30,
                          // shape: StadiumBorder(
                          //     side: BorderSide(
                          //         color: Colors.white,
                          //         style: BorderStyle.solid,
                          //         strokeAlign: 3)),

                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // mainAxisExtent: 35,
                crossAxisCount: 2,
                childAspectRatio: 2,
                // crossAxisSpacing: 30,
                // mainAxisSpacing: 30
              )),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
