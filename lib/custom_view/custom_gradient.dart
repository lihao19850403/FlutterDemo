import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

SizedBox content(String info) => SizedBox(
      width: 280,
      height: 280,
      child: Center(
        child: Text(
          info,
          style: const TextStyle(color: Colors.black, fontSize: 36),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "渐变",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("线性渐变与圆形渐变"),
                  ),
                  body: ListView(
                    children: <Widget>[
                      const Center(
                        child: Text("线性渐变"),
                      ),
                      Center(
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                            begin: FractionalOffset(0.5, 0),
                            end: FractionalOffset(1, 1),
                            colors: <Color>[
                              Colors.red,
                              Colors.green,
                              Colors.blue,
                              Colors.grey
                            ],
                          )),
                          child: content("线性渐变"),
                        ),
                      ),
                      const Center(
                        child: Text("圆形渐变"),
                      ),
                      Center(
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                              gradient: RadialGradient(
                                  center: Alignment(0, 0),
                                  radius: 0.5,
                                  colors: <Color>[
                                Colors.red,
                                Colors.green,
                                Colors.blue,
                                Colors.grey
                              ])),
                          child: content("圆形渐变"),
                        ),
                      )
                    ],
                  ),
                )),
      );
}
