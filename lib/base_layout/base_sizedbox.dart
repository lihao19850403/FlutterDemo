import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Sizedbox Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("SizedBox固定尺寸容器"),
          ),
          body: const SizedBox(
              width: 200,
              height: 300,
              child: Card(
                color: Colors.green,
                child: Text(
                  "子控件不能超过200×300的尺寸",
                  style: TextStyle(fontSize: 36),
                ),
              )),
        ),
      );
}
