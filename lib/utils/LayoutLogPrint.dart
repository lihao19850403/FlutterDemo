import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:developer' as developer;

/// 打印Widget的布局约束信息。
class LayoutLogPrint<T> extends StatelessWidget {
  const LayoutLogPrint({Key? key, this.tag, required this.child})
      : super(key: key);

  final Widget child;
  final T? tag;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, Constraints constraints) {
      assert(() {
        developer.log('${tag ?? key ?? child}: $constraints');
        return true;
      }());
      return child;
    });
  }
}
