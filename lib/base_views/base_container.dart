import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "标准容器",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("容器组件示例"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 8),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: const Text(
              "Flutter",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
