import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "基本手势",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("基本手势"),
                  ),
                  body: GestureDetector(
                      onTapDown: (details) =>
                          developer.log("手指按下：${details.toString()}"),
                      onTapUp: (details) =>
                          developer.log("手指抬起：${details.toString()}"),
                      onLongPress: () => developer.log("手指在屏幕上移动"),
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("手势按钮"),
                        ),
                      )),
                )),
      );
}
