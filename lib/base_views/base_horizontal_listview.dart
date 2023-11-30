import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "水平列表",
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("水平列表示例"),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20), // 上下边距为20。
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal, // 列表横向滚动。
              children: <Widget>[
                Container(
                  width: 160,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 160,
                  color: Colors.amber,
                ),
                Container(
                  width: 160,
                  color: Colors.green,
                  child: const Column(
                    children: <Widget>[
                      Text("水平",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 36)),
                      Icon(Icons.list)
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  color: Colors.black,
                ),
                Container(
                  width: 160,
                  color: Colors.pinkAccent,
                )
              ],
            ),
          )),
    );
  }
}
