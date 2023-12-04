import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "透明度处理",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("透明度处理"),
                  ),
                  body: Center(
                      child: Opacity(
                    opacity: 0.3,
                    child: Container(
                        width: 250,
                        height: 100,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(
                          child: Text(
                            "透明度为0.3",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                        )),
                  )),
                )),
      );
}
