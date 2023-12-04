import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "旋转盒子",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("旋转盒子，每次右旋90度"),
                  ),
                  body: const Center(
                      child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "RotatedBox旋转盒子",
                      style: TextStyle(fontSize: 36),
                    ),
                  )),
                )),
      );
}
