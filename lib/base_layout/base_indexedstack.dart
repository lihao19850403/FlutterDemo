import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "stack层叠布局",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Stack层叠布局"),
          ),
          body: Builder(
            builder: (context) => Center(
                child: IndexedStack(
              index: 1, // 设置为1则只显示1号组件。
              alignment: Alignment.topLeft,
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/head_icon_square.jpg"),
                  radius: 100,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black38),
                  child: const Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )),
          ),
        ),
      );
}
