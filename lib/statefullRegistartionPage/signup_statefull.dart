import 'package:assignements_luminar/registartion_page/content_page.dart';
import 'package:assignements_luminar/statefullRegistartionPage/home_statefull.dart';
import 'package:assignements_luminar/statefullRegistartionPage/login_statefull.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Just a few things to get started"),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Type a valid email";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (uname) {
                  if (uname!.isEmpty || uname.length < 6) {
                    return "min 6 chara required";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "UserName",
                    labelText: "UserName",
                    prefixIcon: const Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (pass) {
                  if (pass!.isEmpty || pass.length < 6) {
                    return "min 8 chara";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.password_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 5,
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
                minWidth: 120,
                color: Colors.blueAccent,
                child: const Text("Sign up"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(text: "Already have an account ?"),
                        TextSpan(
                            text: "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue))
                      ]))),
              IconButton(onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const HomeStatefull()));
              }, icon: const Icon(Icons.home))
            ],
          ),
        ),
      )),
    );
  }
}
