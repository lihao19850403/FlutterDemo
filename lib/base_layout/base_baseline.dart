import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Baseline Demo",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Baseline基准线布局"),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Baseline(
                  baseline: 80,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    "AaBbCc",
                    style: TextStyle(
                        fontSize: 36, textBaseline: TextBaseline.alphabetic),
                  ),
                ),
                Baseline(
                  baseline: 80,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.green,
                  ),
                ),
                const Baseline(
                  baseline: 80,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    "DdEeFf",
                    style: TextStyle(
                        fontSize: 26, textBaseline: TextBaseline.alphabetic),
                  ),
                )
              ],
            )),
      );
}
