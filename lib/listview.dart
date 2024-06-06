import 'package:flutter/material.dart';
import 'package:flutter_textfield/about.dart';
import 'package:flutter_textfield/detailScreen.dart';
import 'package:flutter_textfield/model/data.dart';

class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Beasiswa di Indonesia"),
        actions: <Widget>[
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutScreen()));
              },
              label: const Icon(Icons.person))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          itemCount: Data.itemlist.length,
          itemBuilder: (BuildContext context, int index) {
            final dataitem = Data.itemlist[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            nama: dataitem.nama!,
                            description: dataitem.description!,
                            foto: dataitem.foto!)));
              },
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                      "${dataitem.foto}",
                    ),
                  ),
                  title: Text("${dataitem.nama}"),
                  subtitle: Text("${dataitem.subname}"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
