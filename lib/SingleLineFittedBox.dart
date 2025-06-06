import 'package:flutter/material.dart';

/// 自适应内容的单行Row。
class SingleLineFittedBox extends StatelessWidget {
  const SingleLineFittedBox({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return FittedBox(
          child: ConstrainedBox(
              constraints: constraints.copyWith(
                  minWidth: constraints.maxWidth, maxWidth: double.infinity),
              child: child));
    });
  }
}
