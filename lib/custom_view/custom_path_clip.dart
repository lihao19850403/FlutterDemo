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
        title: "自定义路径裁剪",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("自定义路径裁剪"),
                  ),
                  body: Center(
                      child: ClipPath(
                    clipper: PathClipper(),
                    child: content(),
                  )),
                )),
      );
}

class PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // 绘制一个闭合三角形。
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
