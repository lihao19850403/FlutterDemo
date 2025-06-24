import 'package:flutter/material.dart';
import 'dart:math' as Math;

/// 彩色环形进度条。
class GradientCircularProgressIndicator extends StatelessWidget {
  const GradientCircularProgressIndicator(
      {Key? key,
      this.strokeWidth = 2.0,
      required this.radius,
      required this.colors,
      this.stops,
      this.strokeCapRound = false,
      this.backgroundColor = const Color(0xFFEEEEEE),
      this.totalAngle = 2 * Math.pi,
      this.value})
      : super(key: key);

  /// 进度条粗细。
  final double strokeWidth;

  /// 环形进度条半径。
  final double radius;

  /// 进度条两端是否以圆角结尾。
  final bool strokeCapRound;

  /// 进度值，[0.0 ~ 1.0]。
  final double? value;

  /// 进度条背景色。
  final Color backgroundColor;

  /// 进度条的总弧度，2 * PI为整圆，小于2 * PI则不是整圆。
  final double totalAngle;

  /// 渐变色数组。
  final List<Color> colors;

  /// 渐变色的终止点，对应colors属性。
  final List<double>? stops;

  @override
  Widget build(BuildContext context) {
    double _offset = 0;
    if (strokeCapRound) {
      _offset = Math.asin(strokeWidth / (radius * 2 - strokeWidth));
    }
    var _colors = colors;
    if (_colors == null) {
      Color color = Theme.of(context).colorScheme.secondary;
      _colors = [color, color];
    }
    return Transform.rotate(
        angle: -Math.pi / 2.0 - _offset,
        child: CustomPaint(
            size: Size.fromRadius(radius),
            painter: _GradientCircularProgressPainter(
                strokeWidth: strokeWidth,
                strokeCapRound: strokeCapRound,
                backgroundColor: backgroundColor,
                stops: stops,
                value: value,
                total: totalAngle,
                radius: radius,
                colors: _colors)));
  }
}

/// 画笔。
class _GradientCircularProgressPainter extends CustomPainter {
  const _GradientCircularProgressPainter(
      {this.strokeWidth = 10.0,
      this.strokeCapRound = false,
      this.backgroundColor = const Color(0xFFEEEEEE),
      this.radius,
      this.total = 2 * Math.pi,
      required this.colors,
      this.stops,
      this.value});

  final double strokeWidth;
  final bool strokeCapRound;
  final double? value;
  final Color backgroundColor;
  final List<Color> colors;
  final double total;
  final double? radius;
  final List<double>? stops;

  @override
  void paint(Canvas canvas, Size size) {
    if (radius != null) {
      size = Size.fromRadius(radius!);
    }
    double _offset = strokeWidth / 2.0;
    double _value = (value ?? .0);
    _value = _value.clamp(.0, 1.0) * total;
    double _start = .0;

    if (strokeCapRound) {
      _start = Math.asin(strokeWidth / (size.width - strokeWidth));
    }

    Rect rect = Offset(_offset, _offset) &
        Size(size.width - strokeWidth, size.height - strokeWidth);

    var paint = Paint()
      ..strokeCap = strokeCapRound ? StrokeCap.round : StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..isAntiAlias = true
      ..strokeWidth = strokeWidth;

    // 绘制背景。
    if (backgroundColor != Colors.transparent) {
      paint.color = backgroundColor;
      canvas.drawArc(rect, _start, total, false, paint);
    }

    // 绘制前景。
    if (_value > 0) {
      paint.shader = SweepGradient(
              colors: colors, startAngle: 0.0, endAngle: _value, stops: stops)
          .createShader(rect);
      canvas.drawArc(rect, _start, _value, false, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
