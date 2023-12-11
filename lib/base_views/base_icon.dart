import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "图标",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("图标示例"),
            ),
            body: Center(
              child: Column(children: <Widget>[
                Center(
                  child: Icon(Icons.phone, color: Colors.green[500], size: 80),
                ),
                const Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.accessible,
                          size: 64,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.error,
                          size: 64,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.fingerprint,
                          size: 64,
                          color: Colors.green,
                        ),
                      ]),
                ),
              ]),
            )));
  }
}
