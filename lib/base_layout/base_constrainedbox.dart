import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "ConstrainedBox Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("ConstrainedBox限定尺寸范围"),
          ),
          body: ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 120, minHeight: 120, maxWidth: 220, maxHeight: 220),
              child: Container(
                // 虽然指定了300×300，但不能超过外层限定的220×220。
                width: 300,
                height: 300,
                color: Colors.green,
                child: const Text(
                  "子控件宽高要在120~220之间",
                  style: TextStyle(fontSize: 36),
                ),
              )),
        ),
      );
}
