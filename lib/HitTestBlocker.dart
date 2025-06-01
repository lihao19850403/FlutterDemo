import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HitTestBlocker extends SingleChildRenderObjectWidget {
  const HitTestBlocker(
      {Key? key,
      this.up = true,
      this.down = false,
      this.self = false,
      Widget? child})
      : super(key: key, child: child);

  /// up为true时，hitTest()将一直返回false。
  final bool up;

  /// down为true时，将不会调用hitTestChildren()。
  final bool down;

  /// hitTestSelf的返回值。
  final bool self;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderHitTestBlocker(up: up, down: down, self: self);
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderHitTestBlocker renderObject) {
    renderObject
      ..up = up
      ..down = down
      ..self = self;
  }
}

class RenderHitTestBlocker extends RenderProxyBox {
  RenderHitTestBlocker({this.up = true, this.down = true, this.self = true});

  bool up;
  bool down;
  bool self;

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    bool hitTestDownResult = false;
    if (!down) {
      hitTestDownResult = hitTestChildren(result, position: position);
    }
    bool pass =
        hitTestSelf(position) || (hitTestDownResult && size.contains(position));
    if (pass) {
      result.add(BoxHitTestEntry(this, position));
    }
    return !up && pass;
  }

  @override
  bool hitTestSelf(Offset position) {
    return self;
  }
}
