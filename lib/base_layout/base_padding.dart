import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

Widget innerItem() => Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue, width: 8)),
      child: const FlutterLogo(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Padding Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Padding示例"),
          ),
          body: Builder(
            builder: (context) => ListView(
              children: <Widget>[
                const Text("内边距60"),
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    padding: const EdgeInsets.all(60), // 内边距60。
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.green, width: 8)),
                    child: innerItem(),
                  ),
                ),
                const Text("内边距6"),
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    padding: const EdgeInsets.all(6), // 内边距6。
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.green, width: 8)),
                    child: innerItem(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
