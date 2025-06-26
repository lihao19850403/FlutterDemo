import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/utils/CustomCheckBox.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "自绘单选钮/复选框",
        home: Builder(
            builder: (context) => Scaffold(
                appBar:
                    AppBar(centerTitle: true, title: const Text("自绘单选钮/复选框")),
                body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 4,
                          children: [
                            CustomCheckBox(
                                value: _checked, onChanged: _onChange),
                            const Text("默认样式的复选框")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 4,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 18, top: 18, bottom: 18),
                                child: SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CustomCheckBox(
                                        strokeWidth: 1,
                                        radius: 1,
                                        value: _checked,
                                        onChanged: _onChange))),
                            const Text("细小复选框")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 4,
                          children: [
                            SizedBox(
                                width: 30,
                                height: 30,
                                child: CustomCheckBox(
                                    strokeWidth: 3,
                                    radius: 3,
                                    value: _checked,
                                    onChanged: _onChange)),
                            const Text("粗大复选框")
                          ])
                    ])))));
  }

  void _onChange(value) {
    setState(() {
      _checked = value;
    });
  }
}
