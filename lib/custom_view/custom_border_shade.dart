import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "圆角边框+阴影",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("圆角边框+阴影"),
                  ),
                  body: Center(
                    child: Container(
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(36),
                          border: Border.all(color: Colors.grey, width: 4),
                          image: const DecorationImage(
                              image: ExactAssetImage(
                                  "assets/images/head_icon_square.jpg"),
                              fit: BoxFit.cover),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                                color: Colors.green,
                                blurRadius: 8,
                                spreadRadius: 8,
                                offset: Offset(-1, 1))
                          ]),
                    ),
                  ),
                )),
      );
}
