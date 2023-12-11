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
  bool _switchSelected = false;
  bool _checkboxSelected = false;

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "单选钮和复选框",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("单选钮和复选框"),
                  ),
                  body: Center(
                      child: Column(
                    children: <Widget>[
                      Switch(
                          value: _switchSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _switchSelected = newValue;
                            });
                          }),
                      Checkbox(
                          value: _checkboxSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _checkboxSelected = newValue!;
                            });
                          })
                    ],
                  )),
                )),
      );
}
