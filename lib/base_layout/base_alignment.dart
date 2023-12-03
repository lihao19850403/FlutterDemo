import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "对齐布局示例",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Align对齐布局"),
          ),
          body: Builder(
              builder: (context) => Stack(
                    children: <Widget>[
                      Align(
                        alignment: FractionalOffset.topLeft,
                        child: Image.asset(
                          "assets/images/align1.jpg",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.topRight,
                        child: Image.asset(
                          "assets/images/align2.jpg",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.center,
                        child: Image.asset(
                          "assets/images/align3.jpg",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Image.asset(
                          "assets/images/align4.jpeg",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Image.asset(
                          "assets/images/align5.png",
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ],
                  )),
        ),
      );
}
