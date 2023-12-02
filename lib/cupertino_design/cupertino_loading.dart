import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Cupertino loading",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("Cupertino风格加载框"),
                  ),
                  body: const Center(
                    child: CupertinoActivityIndicator(
                      animating: true,
                      radius: 50,
                    ),
                  ),
                )),
      );
}
