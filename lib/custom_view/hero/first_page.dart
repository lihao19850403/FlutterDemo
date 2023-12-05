import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/custom_view/hero/second_page.dart';

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
                body: Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Hero(
                        tag: "banner",
                        child: Image.asset(
                          "assets/images/banner1.jpeg",
                          width: 600,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                        extendedContext: context,
                                      )));
                            },
                            child: const Text("跳转至第二页"))),
                  ],
                ))),
      );
}
