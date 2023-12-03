import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "LimittedBox Demo",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("LimittedBox只限制最大宽高"),
            ),
            body: Row(
              children: <Widget>[
                LimitedBox(
                    // 仅在外层还没有限定尺寸的时候有效。
                    maxWidth: 150,
                    child: Container(
                      // 虽然指定了300×300，但宽度不能超过外层限定的150。
                      width: 300,
                      height: 300,
                      color: Colors.green,
                      child: const Text(
                        "子控件宽度不能超过150",
                        style: TextStyle(fontSize: 36),
                      ),
                    )),
              ],
            )),
      );
}
