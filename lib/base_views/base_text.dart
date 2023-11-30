import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "文本控件",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("文本控件"),
        ),
        body: const Column(
          children: <Widget>[
            Text(
              "红色 + 黑色删除线 + 25号",
              style: TextStyle(
                  color: Color(0xFFFF0000),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Color(0xFF000000),
                  fontSize: 25),
            ),
            Text(
              "橙色 + 黑色删除线 + 24号",
              style: TextStyle(
                  color: Color(0xFFFF9900),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFF000000),
                  fontSize: 24),
            ),
            Text(
              "虚线上划线 + 23号 + 倾斜",
              style: TextStyle(
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dashed,
                  fontSize: 23,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              "24号 + 加粗",
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 6),
            ),
          ],
        ),
      ),
    );
  }
}
