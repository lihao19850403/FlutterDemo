import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/LayoutLogPrint.dart';

void main() => runApp(const LayoutBuilderRouter());

class ResponsiveColumn extends StatelessWidget {
  const ResponsiveColumn({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 200) {
        return Column(mainAxisSize: MainAxisSize.min, children: children);
      } else {
        var wrapChildren = <Widget>[];
        for (var i = 0; i < children.length; i += 2) {
          if (i + 1 < children.length) {
            wrapChildren.add(Row(
                mainAxisSize: MainAxisSize.min,
                children: [children[i], children[i + 1]]));
          } else {
            wrapChildren.add(children[i]);
          }
        }
        return Column(mainAxisSize: MainAxisSize.min, children: wrapChildren);
      }
    });
  }
}

class LayoutBuilderRouter extends StatelessWidget {
  const LayoutBuilderRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = List.filled(6, const Text("A"));
    return Column(children: [
      // 宽度小于200，单列显示：
      SizedBox(width: 190, child: ResponsiveColumn(children: children)),
      // 宽度不限制，双列显示：
      ResponsiveColumn(children: children),
      // 显示控件日志信息：
      const LayoutLogPrint(child: Text("xx"))
    ]);
  }
}
