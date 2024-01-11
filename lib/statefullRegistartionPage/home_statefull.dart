import 'package:assignements_luminar/statefullRegistartionPage/login_statefull.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStatefull(),
  ));
}

class HomeStatefull extends StatefulWidget {
  const HomeStatefull({super.key});

  @override
  State<HomeStatefull> createState() => _HomeStatefullState();
}

class _HomeStatefullState extends State<HomeStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Image(image: AssetImage("assets/images/moon icon.jpg")),
            const SizedBox(
              height: 50,
            ),
            const Text("Make mymories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 20,
            ),
            const Text(
                "Record, recall and share your\nfavorite mymories anytime",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: .8)),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blueAccent,
              shape: const StadiumBorder(),
              minWidth: 70,
              child: const Text("Continue with Apple"),
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.grey,
              shape: const StadiumBorder(),
              minWidth: 70,
              child: const Text("Continue with Google"),
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blueGrey,
              shape: const StadiumBorder(),
              minWidth: 70,
              child: const Text("Sign up with email"),
            ),
            const SizedBox(
              height: 30,
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
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w200),
                        children: [
                      TextSpan(text: "Already have an account?"),
                      TextSpan(
                          text: "Login",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])))
          ],
        ),
      ),
    );
  }
}
