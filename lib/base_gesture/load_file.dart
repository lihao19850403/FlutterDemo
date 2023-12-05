import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer' as developer;

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

  // 文件内容。
  String? content;

  Future<String> loadFile() async {
    return await rootBundle.loadString("assets/values/AndroidManifest.xml");
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "加载文件",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("异步加载文件"),
                  ),
                  body: ListView(
                    children: <Widget>[
                      Center(
                        child: Text(content ?? "暂无内容"),
                      )
                    ],
                  ),
                  floatingActionButton: FloatingActionButton(
                      tooltip: "异步加载文件",
                      child: const Icon(Icons.add),
                      onPressed: () {
                        developer.log("开始加载");
                        content = "加载中...";
                        loadFile().then((value) {
                          developer.log("拿到了内容：$value");
                          setState(() {
                            content = value;
                          });
                        }).onError((error, stackTrace) {
                          developer.log("发生了异常：${stackTrace.toString()}");
                          return null;
                        });
                      }),
                )),
      );
}
