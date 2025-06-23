import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/utils/KeepAliveWrapper.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // 页面缓存状态。
  bool isCached = false; // 默认不缓存。

  @override
  Widget build(BuildContext context) {
    var pageChildren = <Widget>[];
    for (int i = 0; i < 6; i++) {
      pageChildren.add(
          KeepAliveWrapper(keepAlive: isCached, child: PageItem(index: i)));
    }
    return MaterialApp(
      title: "PageView cached items demo",
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(isCached ? "PageView缓存子页面" : "PageView不缓存子页面")),
        body: PageView(children: pageChildren),
        floatingActionButton: FloatingActionButton(
            tooltip: "切换子页的缓存与否设置。",
            onPressed: () {
              setState(() {
                isCached = !isCached;
              });
            },
            child: const Icon(Icons.flag)),
      ),
    );
  }
}

/* ---------- 子页面。 ---------- */

class PageItem extends StatelessWidget {
  const PageItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: generateRandomColor(),
      child: Center(
        child: Text('$index', textScaler: const TextScaler.linear(5)),
      ),
    );
  }

  Color generateRandomColor() {
    int red = Random().nextInt(256);
    int green = Random().nextInt(256);
    int blue = Random().nextInt(256);
    return Color.fromARGB(255, red, green, blue);
  }
}
