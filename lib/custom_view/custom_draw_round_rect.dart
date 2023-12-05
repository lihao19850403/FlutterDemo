import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "绘制圆角矩形",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("绘制圆角矩形"),
                ),
                body: ListView(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: 320,
                        height: 320,
                        child: CustomPaint(
                          painter: RRectPainter(isFill: true),
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
                          painter: RRectPainter(isFill: false),
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

class RRectPainter extends CustomPainter {
  // 是否填充。
  bool isFill = false;

  // 自定义画笔。
  final Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3;

  RRectPainter({required this.isFill}) : super();

  @override
  void paint(Canvas canvas, Size size) {
    _paint.style = isFill ? PaintingStyle.fill : PaintingStyle.stroke;
    Rect rect = Rect.fromCircle(center: const Offset(160, 160), radius: 140);
    RRect rrect = RRect.fromRectAndRadius(rect, const Radius.circular(30));
    canvas.drawRRect(rrect, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
