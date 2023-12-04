import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Transform Demo",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Transform矩阵变换"),
            ),
            body: Center(
                child: Container(
              color: Colors.grey,
              child: Transform(
                transform: Matrix4.rotationZ(0.3),
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green,
                  child: const Text(
                    "Transform矩阵变换",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ))),
      );
}
