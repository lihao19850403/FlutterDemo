import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Image Demo",
        home: Center(
            child: Image.network(
          "https://www.bejson.com/static/bejson/img/logo.png",
          fit: BoxFit.fitWidth,
        )));
  }
}
