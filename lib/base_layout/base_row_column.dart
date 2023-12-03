import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "横纵布局",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("横纵布局"),
          ),
          body: Builder(
              builder: (context) => const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("水平布局："),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            "左侧文字",
                            textAlign: TextAlign.left,
                          )),
                          Expanded(
                              child: Text(
                            "中间文本",
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                              child: FittedBox(
                            fit: BoxFit.contain,
                            child: FlutterLogo(),
                          ))
                        ],
                      ),
                      Text("垂直布局："),
                      Text("Flutter"),
                      Text("设置了水平靠左，主轴最小化"),
                      Expanded(
                          child: FittedBox(
                        fit: BoxFit.contain,
                        child: FlutterLogo(),
                      )),
                    ],
                  )),
        ),
      );
}
