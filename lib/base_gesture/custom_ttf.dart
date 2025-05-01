import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "加载字体",
      home: Builder(
          builder: (context) => Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text("加载字体"),
              ),
              body: const DefaultTextStyle(
                  style: TextStyle(color: Colors.red, fontSize: 36),
                  textAlign: TextAlign.start,
                  child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "华康字体",
                            style: TextStyle(fontFamily: "huakang"),
                          ),
                        ),
                        Text("使用默认字体样式"),
                        Text("略微调整",
                            style:
                                TextStyle(inherit: false, color: Colors.green))
                      ])))),
    );
  }
}
