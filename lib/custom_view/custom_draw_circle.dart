import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "绘制圆",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("绘制圆"),
                ),
                body: ListView(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: 320,
                        height: 320,
                        child: CustomPaint(
                          painter: CirclePainter(isFill: true),
                          child: const Center(
                              child: Text(
                            "填充",
                            style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: SizedBox(
                        width: 320,
                        height: 320,
                        child: CustomPaint(
                          painter: CirclePainter(isFill: false),
                          child: const Center(
                              child: Text(
                            "不填充",
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

class CirclePainter extends CustomPainter {
  // 是否填充。
  bool isFill = false;

  // 自定义画笔。
  final Paint _paint = Paint()
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3;

  CirclePainter({required this.isFill}) : super();

  @override
  void paint(Canvas canvas, Size size) {
    _paint.style = isFill ? PaintingStyle.fill : PaintingStyle.stroke;
    canvas.drawCircle(const Offset(160, 160), 140, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
