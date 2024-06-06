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
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("url"),
            ),
            Column(
              children: [
                Text(
                  "About Me ",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
