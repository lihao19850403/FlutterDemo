import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "加载字体",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("加载字体"),
                ),
                body: const Center(
                  child: Text(
                    "华康字体",
                    style: TextStyle(fontFamily: "huakang", fontSize: 36),
                  ),
                ))),
      );
}
