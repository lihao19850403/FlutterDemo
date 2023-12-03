import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "center居中布局",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("center居中布局"),
          ),
          body: Builder(
            builder: (context) => Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(color: Colors.greenAccent),
                child: const Center(
                  child: Text(
                    "居中",
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
