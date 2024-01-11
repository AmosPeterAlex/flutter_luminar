import 'package:assignements_luminar/registartion_page/content_page.dart';
import 'package:assignements_luminar/registartion_page/home_page.dart';
import 'package:assignements_luminar/registartion_page/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});
  String uname = "amos";
  String pass = "4210";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Welcome back ! Login with your creditials",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black45),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  ListTile(
                    leading: Text("Email"),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal())),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Text(
                      "Password",
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal())),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              child:
                  Text("Login ", style: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () {
                if (uname == emailController.text &&
                    pass == passwordController.text) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContentPage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Error"),
                    backgroundColor: Colors.red,
                  ));
                  emailController.text = "";
                  passwordController.text = "";
                }
              },
              color: Colors.lightBlueAccent,
              shape: StadiumBorder(),
              height: 40,
              minWidth: 190,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationPage()));
                },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(text: "Don't Have an account?"),
                      TextSpan(
                          text: "SignUp",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])))
          ],
        ));
  }
}
