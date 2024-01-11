import 'package:assignements_luminar/registartion_page/login_page.dart';
import 'package:assignements_luminar/registartion_page/registration_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Hello There!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
                textAlign: TextAlign.center,
                "Automatic identity verification which enables you to \nverify your identity",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800])),
            SizedBox(
              height: 60,
            ),
            Image(
                image: NetworkImage(
                    "https://i0.wp.com/worldenglishblog.com/wp-content/uploads/2022/04/6-Working-at-desk-min.png?resize=512%2C342&ssl=1"),
                height: 350,
                width: 250),
            SizedBox(
              height: 70,
            ),
            MaterialButton(
                minWidth: 190,
                child: Text("Login"),
                shape: StadiumBorder(),
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
                minWidth: 190,
                child: Text("Sign Up"),
                color: Colors.red,
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationPage()));
                })
          ],
        ),
      ),
    );
  }
}
