import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "绘制直线",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("绘制直线"),
                ),
                body: Center(
                  child: SizedBox(
                    width: 320,
                    height: 320,
                    child: CustomPaint(
                      painter: LinePainter(),
                      child: const Center(
                        child: Text(
                          "绘制直线",
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

class LinePainter extends CustomPainter {
  // 自定义画笔。
  final Paint _paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) =>
      canvas.drawLine(const Offset(20, 20), const Offset(300, 20), _paint);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
