import 'package:flutter/material.dart';
import 'package:flutter_textfield/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'text',
      home: Field(),
    );
  }
}
