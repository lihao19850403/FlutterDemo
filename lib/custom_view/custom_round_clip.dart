import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

SizedBox content() => SizedBox(
      width: 300,
      height: 300,
      child: Image.asset(
        "assets/images/head_icon_square.jpg",
        fit: BoxFit.cover,
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "圆和圆角矩形裁剪",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("圆和圆角矩形裁剪"),
                  ),
                  body: ListView(children: <Widget>[
                    const Center(
                      child: Text("圆形裁剪"),
                    ),
                    Center(
                      child: ClipOval(
                        child: content(),
                      ),
                    ),
                    const Center(
                      child: Text("圆角矩形裁剪（注：是ClipRRect，不是ClipRect）"),
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: content(),
                      ),
                    ),
                  ]),
                )),
      );
}
