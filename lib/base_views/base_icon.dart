import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "图标",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("图标示例"),
          ),
          body: Center(
            child: Icon(Icons.phone, color: Colors.green[500], size: 80),
          ),
        ));
  }
}
