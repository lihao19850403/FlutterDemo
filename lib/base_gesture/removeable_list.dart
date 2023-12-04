import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const _MyStatePage();
}

class _MyStatePage extends StatefulWidget {
  const _MyStatePage();

  @override
  State<StatefulWidget> createState() => _MyState();
}

class _MyState extends State<_MyStatePage> {
  _MyState();

  List<String> items = List<String>.generate(30, (index) => "列表项　$index");

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "可滑动删除的列表",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("可滑动删除的列表"),
                  ),
                  body: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Dismissible(
                          key: Key(item),
                          child: ListTile(
                            title: Text(item),
                            leading: const Icon(Icons.people),
                          ),
                          onDismissed: (direction) {
                            setState(() {
                              // 更新状态。
                              items.remove(item);
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("已删除$item")));
                            });
                          },
                        );
                      }),
                )),
      );
}
