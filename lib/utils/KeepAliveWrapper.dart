import 'package:flutter/material.dart';

/// 永久缓存容器，适用于List、Grid、PageView等。当内容滑出屏幕后，可手动指定是否销毁，或仍然缓存，默认仍然缓存。
class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({Key? key, this.keepAlive = true, required this.child})
      : super(key: key);

  final bool keepAlive;
  final Widget child;

  @override
  State<StatefulWidget> createState() {
    return _KeepAliveWrapperState();
  }
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }
}
