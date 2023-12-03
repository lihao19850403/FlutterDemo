import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "AspectRadio Demo",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("AspectRadio宽高比"),
            ),
            body: Container(
              height: 200,
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Container(color: Colors.green),
              ),
            )),
      );
}
