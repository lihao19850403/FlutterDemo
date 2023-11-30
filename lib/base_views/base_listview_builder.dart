import 'package:flutter/material.dart';

void main() => runApp(MyApp(
      items: List<String>.generate(500, (index) => "Item $index"),
    ));

class MyApp extends StatelessWidget {
  // 要显示的内容。
  final List<String>? items;

  const MyApp({Key? key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "列表生成器",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("列表生成器示例"),
            ),
            body: ListView.builder(
                itemCount: items?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.phone),
                    title: Text("${items?[index]}"),
                  );
                })));
  }
}
