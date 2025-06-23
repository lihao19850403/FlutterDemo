import 'package:flutter/material.dart';

/// 渐变色按钮。
class GradientButton extends StatelessWidget {
  const GradientButton(
      {Key? key,
      this.colors,
      this.width,
      this.height,
      this.borderRadius,
      this.onPressed,
      required this.child})
      : super(key: key);

  /// 渐变色数组。
  final List<Color>? colors;

  /// 按钮宽度。
  final double? width;

  /// 按钮高度。
  final double? height;

  /// 按钮圆角弧度。
  final BorderRadius? borderRadius;

  /// 按钮点击回调。
  final GestureTapCallback? onPressed;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<Color> _colors =
        colors ?? [theme.primaryColor, theme.primaryColorDark];
    return DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: _colors),
            borderRadius: borderRadius),
        child: Material(
            type: MaterialType.transparency,
            child: InkWell(
                splashColor: _colors.last,
                highlightColor: Colors.transparent,
                borderRadius: borderRadius,
                onTap: onPressed,
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(height: height, width: width),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DefaultTextStyle(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          child: child)),
                ))));
  }
}
