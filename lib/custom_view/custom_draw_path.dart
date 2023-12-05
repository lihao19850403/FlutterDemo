import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "绘制路径",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("绘制路径"),
                ),
                body: Center(
                  child: SizedBox(
                    width: 320,
                    height: 320,
                    child: CustomPaint(
                      painter: PathPainter(),
                      child: const Center(
                        child: Text(
                          "举例：三角形",
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

class PathPainter extends CustomPainter {
  // 自定义画笔。
  final Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 3
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(160, 0);
    path.lineTo(300, 300);
    path.lineTo(20, 300);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
