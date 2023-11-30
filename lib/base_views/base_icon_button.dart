import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "图标按钮",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("图标按钮示例"),
          ),
          body: Center(
            child: IconButton(
              icon: const Icon(Icons.volume_up, size: 80),
              tooltip: "按钮按下事件",
              onPressed: () {
                developer.log("按钮已按下");
              },
            ),
          ),
        ));
  }
}
