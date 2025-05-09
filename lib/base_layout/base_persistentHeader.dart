import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/SliverHeaderDelegate.dart';

void main() => runApp(const PersistentHeaderRoute());

class PersistentHeaderRoute extends StatelessWidget {
  const PersistentHeaderRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(
      slivers: <Widget>[
        buildSliverList(),
        SliverPersistentHeader(
            pinned: true,
            delegate: SliverHeaderDelegate(
                maxHeight: 80, minHeight: 50, child: buildHeader(1))),
        buildSliverList(),
        SliverPersistentHeader(
            pinned: true,
            delegate: SliverHeaderDelegate.fixedHeight(
                height: 50, child: buildHeader(2))),
        buildSliverList(20)
      ],
    ));
  }

  Widget buildSliverList([int count = 5]) {
    return SliverFixedExtentList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return ListTile(title: Text('$index'));
        }, childCount: count),
        itemExtent: 50);
  }

  Widget buildHeader(int i) {
    return Container(
        color: Colors.lightBlue.shade200,
        alignment: Alignment.centerLeft,
        child: Text('PersistentHeader $i'));
  }
}
