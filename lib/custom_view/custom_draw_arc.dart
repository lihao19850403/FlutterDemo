import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "绘制圆弧",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("绘制圆弧"),
                ),
                body: Center(
                  child: SizedBox(
                    width: 320,
                    height: 320,
                    child: CustomPaint(
                      painter: ArcPainter(),
                      child: const Center(
                        child: Text(
                          "绘制圆弧并封口",
                          style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ))),
      );
}

class ArcPainter extends CustomPainter {
  // 自定义画笔。
  final Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 3
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromCircle(center: const Offset(160, 130), radius: 140);
    canvas.drawArc(rect, 0, math.pi, true, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
