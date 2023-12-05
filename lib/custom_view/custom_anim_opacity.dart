import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => _MyAppPage();
}

class _MyAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<_MyAppPage> {
  bool _isOpacity = false;

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "显隐动画",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("显隐动画举例"),
                  ),
                  body: Center(
                      child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1500),
                    opacity: _isOpacity ? 0 : 1,
                    child: Container(
                      width: 300,
                      height: 300,
                      color: Colors.green,
                    ),
                  )),
                  floatingActionButton: FloatingActionButton(
                      tooltip: "控制显隐",
                      child: const Icon(Icons.flip),
                      onPressed: () {
                        setState(() {
                          _isOpacity = !_isOpacity;
                        });
                      }),
                )),
      );
}
