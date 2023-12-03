import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Position Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Position定位布局"),
          ),
          body: Builder(
              builder: (context) => Center(
                    child: Stack(
                      children: <Widget>[
                        Image.asset("assets/images/banner1.jpeg"),
                        const Positioned(
                          bottom: 50,
                          right: 50,
                          child: Text(
                            "Hi Flutter",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                fontFamily: "serif",
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )),
        ),
      );
}
