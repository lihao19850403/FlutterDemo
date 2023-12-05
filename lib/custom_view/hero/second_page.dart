import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // 从上一个页面继承来的context。
  final BuildContext? extendedContext;

  const SecondPage({super.key, this.extendedContext});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "第二页",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("第二页"),
                  ),
                  body: Column(
                    children: <Widget>[
                      const Spacer(),
                      GestureDetector(
                        child: Hero(
                          tag: "banner",
                          child: Image.asset(
                            "assets/images/banner2.jpg",
                            width: 600,
                            height: 240,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Center(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(extendedContext!).pop();
                              },
                              child: const Text("退出本页"))),
                    ],
                  ),
                )),
      );
}
