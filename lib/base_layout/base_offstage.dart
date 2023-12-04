import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const _MyAppPage();
}

class _MyAppPage extends StatefulWidget {
  const _MyAppPage();

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<_MyAppPage> {
  // 控件显隐状态。
  bool offstage = false; // 默认显示。offstage是不显示的意思。

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Offstage Demo",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("Offstage控件显隐"),
                  ),
                  body: Center(
                      child: Offstage(
                    offstage: offstage,
                    child: const Text(
                      "我出来啦",
                      style: TextStyle(fontSize: 36),
                    ),
                  )),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        offstage = !offstage;
                      });
                    },
                    tooltip: "控制显隐的按钮",
                    child: const Icon(Icons.flip),
                  ),
                )),
      );
}
