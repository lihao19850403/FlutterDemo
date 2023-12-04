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
        title: "自定义矩形裁剪",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("自定义矩形裁剪"),
                  ),
                  body: Center(
                      child: ClipRect(
                    clipper: RectClipper(),
                    child: content(),
                  )),
                )),
      );
}

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) =>
      Rect.fromLTRB(50, 50, size.width - 50, size.height - 50);

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => true;
}
