import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demo_2023/utils/RenderObjectAnimationMixin.dart';

class CustomRadioButton extends LeafRenderObjectWidget {
  const CustomRadioButton(
      {Key? key,
      this.strokeWidth = 2.0,
      this.value = false,
      this.color = Colors.green,
      this.outline = false,
      this.onChanged})
      : super(key: key);

  /// 线条宽度。
  final double strokeWidth;

  /// 轮廓颜色或填充色。
  final Color color;

  /// 是否使用线框模式，true表示没有填充色，仅绘制外线框；false表示使用填充色。
  final bool outline;

  /// 是否选中。
  final bool value;

  /// 选中状态改变监听。
  final ValueChanged<bool>? onChanged;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderDoneObject(strokeWidth, color, value, outline, onChanged);
  }

  @override
  void updateRenderObject(BuildContext context, RenderDoneObject renderObject) {
    if (renderObject.value != value) {
      // RadioButton状态改变，更新其动画状态。
      renderObject.animationStatus =
          value ? AnimationStatus.forward : AnimationStatus.reverse;
    }
    renderObject
      ..strokeWidth = strokeWidth
      ..outline = outline
      ..color = color
      ..value = value
      ..onChanged = onChanged;
  }
}

class RenderDoneObject extends RenderBox with RenderObjectAnimationMixin {
  RenderDoneObject(
      this.strokeWidth, this.color, this.value, this.outline, this.onChanged) {
    progress = value ? 1 : 0;
  }

  int pointerId = -1;
  double strokeWidth;
  Color color;
  bool outline;
  bool value;
  ValueChanged<bool>? onChanged;

  @override
  bool get isRepaintBoundary => true;

  @override
  Duration get duration => const Duration(milliseconds: 300);

  @override
  void doPaint(PaintingContext context, Offset offset) {
    Rect rect = offset & size;
    _drawBackground(context, rect);
    _drawCheckMark(context, rect);
  }

  void _drawBackground(PaintingContext context, Rect rect) {
    final paint = Paint()
      ..isAntiAlias = true
      ..style = outline ? PaintingStyle.stroke : PaintingStyle.fill
      ..color = color;
    if (outline) {
      paint.strokeWidth = strokeWidth;
      rect = rect.deflate(strokeWidth / 2);
    }
    context.canvas.drawCircle(rect.center, rect.shortestSide / 2, paint);
  }

  void _drawCheckMark(PaintingContext context, Rect rect) {
    Curve curve = Curves.easeIn;
    final _progress = curve.transform(progress);
    final paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..color = outline ? color : Colors.white
      ..strokeWidth = strokeWidth;
    final path = Path();
    Offset firstOffset =
        Offset(rect.left + rect.width / 6, rect.top + rect.height / 2.1);
    final secondOffset =
        Offset(rect.left + rect.width / 2.5, rect.bottom - rect.height / 3.3);
    path.moveTo(firstOffset.dx, firstOffset.dy);
    const adjustProgress = .6;
    // 画对勾。
    if (_progress < adjustProgress) {
      // 对勾前段。
      Offset _secondOffset =
          Offset.lerp(firstOffset, secondOffset, _progress / adjustProgress)!;
      path.lineTo(_secondOffset.dx, _secondOffset.dy);
    } else {
      // 对勾后段。
      path.lineTo(secondOffset.dx, secondOffset.dy);
      final lastOffset =
          Offset(rect.right - rect.width / 5, rect.top + rect.height / 3.5);
      Offset _lastOffset = Offset.lerp(secondOffset, lastOffset,
          (progress - adjustProgress) / (1 - adjustProgress))!;
      path.lineTo(_lastOffset.dx, _lastOffset.dy);
    }
    context.canvas.drawPath(path, paint..style = PaintingStyle.stroke);
  }

  @override
  void performLayout() {
    size = constraints
        .constrain(constraints.isTight ? Size.infinite : const Size(25, 25));
  }

  @override
  bool hitTestSelf(Offset position) => true; // 响应点击事件。

  @override
  void handleEvent(PointerEvent event, covariant BoxHitTestEntry entry) {
    if (event.down) {
      pointerId = event.pointer;
    } else if (pointerId == event.pointer) {
      if (size.contains(event.localPosition)) {
        // 触摸点位于本控件范围内，触发onChanged回调。
        onChanged?.call(!value);
      }
    }
  }
}
