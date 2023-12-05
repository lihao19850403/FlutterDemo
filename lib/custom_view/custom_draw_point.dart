import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "绘制点",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("绘制点"),
                ),
                body: ListView(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: 320,
                        height: 320,
                        child: CustomPaint(
                          painter: PointPainter(isLink: false),
                          child: const Center(
                              child: Text(
                            "单独点",
                            style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text("注：指定画笔类型为polygon后会自动连接前后相邻两点。"),
                    Center(
                      child: SizedBox(
                        width: 320,
                        height: 320,
                        child: CustomPaint(
                          painter: PointPainter(isLink: true),
                          child: const Center(
                              child: Text(
                            "自动连线",
                            style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ],
                ))),
      );
}

class PointPainter extends CustomPainter {
  // 是否连线。
  bool isLink = false;

  // 自定义画笔。
  final Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 20;

  PointPainter({required this.isLink}) : super();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPoints(
        isLink ? PointMode.polygon : PointMode.points,
        <Offset>[
          const Offset(50, 60),
          const Offset(40, 90),
          const Offset(100, 100),
          const Offset(300, 300),
          const Offset(300, 80),
          const Offset(200, 200),
        ],
        _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
