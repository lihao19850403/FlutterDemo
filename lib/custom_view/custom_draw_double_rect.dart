import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "绘制嵌套矩形",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("绘制嵌套矩形"),
                ),
                body: ListView(
                  children: <Widget>[
                    const Text("注：嵌套矩形的填充效果是填充两个矩形相差的部分，而不是内外两个矩形都填充上颜色。"),
                    Center(
                      child: SizedBox(
                        width: 320,
                        height: 320,
                        child: CustomPaint(
                          painter: DoubleRectPainter(isFill: true),
                          child: const Center(
                              child: Text(
                            "填充",
                            style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
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
                          painter: DoubleRectPainter(isFill: false),
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

class DoubleRectPainter extends CustomPainter {
  // 是否填充。
  bool isFill = false;

  // 自定义画笔。
  final Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3;

  DoubleRectPainter({required this.isFill}) : super();

  @override
  void paint(Canvas canvas, Size size) {
    _paint.style = isFill ? PaintingStyle.fill : PaintingStyle.stroke;
    Rect outerRectR =
        Rect.fromCircle(center: const Offset(160, 160), radius: 140);
    RRect outer =
        RRect.fromRectAndRadius(outerRectR, const Radius.circular(30));
    Rect innerRectR =
        Rect.fromCircle(center: const Offset(160, 160), radius: 110);
    RRect inner =
        RRect.fromRectAndRadius(innerRectR, const Radius.circular(30));
    canvas.drawDRRect(outer, inner, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
