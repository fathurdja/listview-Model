import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nama;
  final String description;
  final String foto;
  const DetailScreen(
      {super.key,
      required this.nama,
      required this.description,
      required this.foto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: ListView(
        children: [
          Image.network("$foto"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.share,
                      size: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.book,
                      size: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  children: [
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$description",
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
