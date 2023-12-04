import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // 从上一个页面继承来的context。
  BuildContext? extendedContext;

  SecondPage({super.key, this.extendedContext});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "第二页",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("第二页"),
                  ),
                  body: Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(extendedContext!).pop();
                          },
                          child: const Text("退出本页"))),
                )),
      );
}
