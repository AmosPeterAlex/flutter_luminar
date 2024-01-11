import 'package:assignements_luminar/registartion_page/home_page.dart';
import 'package:assignements_luminar/registartion_page/login_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  //const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          title: Text("Registration Page"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Sign up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Create an Account,its free",
              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal())),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal())),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal())),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              child: Text("Sign up ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () {},
              color: Colors.red,
              shape: StadiumBorder(),
              height: 40,
              minWidth: 190,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(text: "Already have an account?"),
                      TextSpan(
                          text: "Login",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])))
          ],
        ));
  }
}
