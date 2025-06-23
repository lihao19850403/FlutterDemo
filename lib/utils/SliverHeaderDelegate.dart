import 'package:flutter/material.dart';
import 'dart:developer' as developer;

typedef SliverHeaderBuilder = Widget Function(
    BuildContext context, double shrinkOffset, bool overlapsContent);

/// 多种滑动吸顶的header。
class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final SliverHeaderBuilder builder;

  // child为header。
  SliverHeaderDelegate(
      {required this.maxHeight, this.minHeight = 0, required Widget child})
      : builder = ((context, shrinkOffset, overlapsContent) => child),
        assert(minHeight <= maxHeight && maxHeight >= 0);

  // 最大和最小高度相同。
  SliverHeaderDelegate.fixedHeight(
      {required double height, required Widget child})
      : builder = ((context, shrinkOffset, overlapsContent) => child),
        maxHeight = height,
        minHeight = height;

  // 需要自定义Builder时使用。
  SliverHeaderDelegate.builder(
      {required this.maxHeight, this.minHeight = 0, required this.builder});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    Widget child = builder(context, shrinkOffset, overlapsContent);
    assert(() {
      if (child.key != null) {
        developer.log(
            '${child.key}: shrink: $shrinkOffset, overlaps: $overlapsContent');
      }
      return true;
    }());
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != maxExtent ||
        oldDelegate.minExtent != minExtent;
  }
}
