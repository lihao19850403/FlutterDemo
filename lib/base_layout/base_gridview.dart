import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

List<Container> content(int count) => List<Container>.generate(
    count,
    (index) => Container(
          color: Colors.green,
        ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "GridView Demo",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("GridView网格布局"),
            ),
            body: GridView.extent(
              maxCrossAxisExtent: 150, // 次轴宽度。
              padding: const EdgeInsets.all(10), // 网格视图整体内边距。
              crossAxisSpacing: 3, // 次轴内边距。
              mainAxisSpacing: 10, // 主轴内边距。
              children: content(9),
            )),
      );
}
