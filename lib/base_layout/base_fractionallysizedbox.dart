import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "FractionallySizedBox Demo",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("FractionallySizedBox百分比布局"),
            ),
            body: Container(
                color: Colors.blueGrey,
                width: 200,
                height: 200,
                child: FractionallySizedBox(
                  alignment: Alignment.topLeft,
                  widthFactor: 0.5, // 宽是父容器宽的50%。
                  heightFactor: 1.5, // 高是父容器的150%。
                  child: Container(
                    color: Colors.green,
                  ),
                ))),
      );
}
