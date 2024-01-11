import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileUI(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileUI extends StatelessWidget {
  // const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    var headIcon = [
      const Icon(Icons.privacy_tip_outlined),
      const Icon(Icons.history),
      const Icon(Icons.help),
      const Icon(Icons.settings),
      const Icon(Icons.person_add_sharp),
      const Icon(Icons.logout),
      const Icon(Icons.privacy_tip_outlined),
      const Icon(Icons.history),
      const Icon(Icons.help),
      const Icon(Icons.settings),
      const Icon(Icons.person_add_sharp),
      const Icon(Icons.logout),
    ];
    var name = [
      "Privacy",
      "Purchase History",
      "Help & Support",
      "Settings",
      "Invite a friend",
      "Logout",
      "Privacy",
      "Purchase History",
      "Help & Support",
      "Settings",
      "Invite a friend",
      "Logout"
    ];
    var tailIcon = [
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
      const Icon(Icons.chevron_right),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Icon(Icons.arrow_back, color: Colors.black54),
        actions: const [
          Icon(
            Icons.more_horiz,
            color: Colors.black54,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(height: 50),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/me edit.png"),
                  radius: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/linkedin.jpg"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/github.jpg"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/twitter.jpg"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/fb.jpg"),
                      radius: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Amos",
                  style: TextStyle(
                      color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "@amospeteralex",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Mobile App Developer",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ),
          Expanded(
child: SingleChildScrollView(
child: SizedBox(
height: 350,
width: 350,
child: ListView.builder(
itemCount: 12,
itemBuilder: (context, index) {
return Padding(
padding: const EdgeInsets.only(
left: 15, right: 15, top: 15, bottom: 15),
child: ListTile(
onTap: () {},
//   style:color,
shape: const StadiumBorder(),
leading: headIcon[index],
title: Text(name[index],
style: const TextStyle(fontSize: 20)),
trailing: tailIcon[index],
tileColor: Colors.black12,
),
);
}),
),
))
        ],
      ),
    );
  }
}



