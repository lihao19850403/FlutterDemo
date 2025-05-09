import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(slivers: <Widget>[
      // AppBar。
      SliverAppBar(
          pinned: true,
          expandedHeight: 250,
          flexibleSpace: FlexibleSpaceBar(
              title: const Text("自定义Sliver滚动视图"),
              background: Image.asset("assets/images/banner1.jpeg",
                  fit: BoxFit.cover))),
      SliverPadding(
        padding: const EdgeInsets.all(8.0),
        sliver: SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              // 限制一下第一个Sliver子元素的个数，以便第二个Sliver有机会展示出来，否则会卡住。
              // 毕竟第一个Sliver只是Padding，主要内容将在第二个Sliver中展现。
              if (index < 20) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: Text('Grid item $index'),
                );
              }
              return null;
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0)),
      ),
      SliverFixedExtentList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List item $index'));
          }),
          itemExtent: 50.0)
    ]));
  }
}
