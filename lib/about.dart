import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
        ),
        body: ListView(
          children: const [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/zaim.jpg"),
            ),
            Column(
              children: [
                Text(
                  "Zaim Fathurrahman Ilham ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                // text diganti deskripsi 
                Text("text"),
              ],
            )
          ],
        ));
  }
}
