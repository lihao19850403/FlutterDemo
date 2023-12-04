import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/base_route/normal_jump/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "第一页",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("第一页"),
                  ),
                  body: Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondPage(
                                      extendedContext: context,
                                    )));
                          },
                          child: const Text("跳转至第二页"))),
                )),
      );
}
