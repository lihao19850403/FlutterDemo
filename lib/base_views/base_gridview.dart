import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "网格 Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("网格视图"),
          ),
          body: GridView.count(
            crossAxisCount: 3,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 30,
            children: const <Widget>[
              Text("第1行第1列"),
              Text("第1行第2列"),
              Text("第1行第3列"),
              Text("第2行第1列"),
              Text("第2行第2列"),
              Text("第2行第3列"),
              Text("第3行第1列"),
              Text("第3行第2列"),
              Text("第3行第3列"),
              Text("第4行第1列"),
              Text("第4行第2列"),
              Text("第4行第3列"),
              Text("第5行第1列"),
              Text("第5行第2列"),
              Text("第5行第3列")
            ],
          ),
        ));
  }
}
