import 'package:assignements_luminar/registartion_page/content_page.dart';
import 'package:assignements_luminar/statefullRegistartionPage/home_statefull.dart';
import 'package:assignements_luminar/statefullRegistartionPage/signup_statefull.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Hello, welcome back",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (uname) {
                    if (uname!.isEmpty || !uname.contains('@')) {
                      return "Type valid username";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      prefixIconColor: Colors.black,
                      fillColor: Colors.white70,
                      hintText: "Username",
                      labelText: "Username",
                      prefixIcon: const Icon(Icons.alternate_email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 8) {
                      return "min 8 req";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      prefixIconColor: Colors.black,
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    final valid = formKey.currentState?.validate();
                    if (valid == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContentPage()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Error"),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
                  color: Colors.blue,
                  shape: const StadiumBorder(),
                  minWidth: 120,
                  child: const Text("Log in"),
                ),
                const SizedBox(
                  height: 2,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()));
                    },
                    child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                            children: [
                          TextSpan(text: "Don't have an account?"),
                          TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue))
                        ]))),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeStatefull()));
                    },
                    icon: const Icon(Icons.home))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
