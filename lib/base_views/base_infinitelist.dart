import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const InfiniteListView());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const InfiniteListView();
}

class InfiniteListView extends StatefulWidget {
  const InfiniteListView({super.key});

  @override
  State<StatefulWidget> createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##Loading...##"; // 结尾加载信息。
  final _words = <String>[loadingTag]; // 单词列表。

  // 重新构建列表。
  void _retrieveData() {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      setState(() {
        _words.insertAll(
            _words.length - 1, // 此处新单词插入“##Loading...##”这个标记之前。
            generateWordPairs()
                .take(20)
                .map((pair) => pair.asPascalCase)
                .toList());
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "无限内容列表",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("无限内容列表"),
                  ),
                  body: ListView.separated(
                      itemBuilder: (context, index) {
                        // 已经加载到列表尾部，进行是否加载更多的判断。
                        if (_words[index] == loadingTag) {
                          // 没有加载够100个单词，继续加载。
                          if (_words.length - 1 < 100) {
                            // 异步去加载数据。
                            _retrieveData();
                            // 同时先展示一个loading框给用户看。
                            return Container(
                              padding: const EdgeInsets.all(16),
                              alignment: Alignment.center,
                              child: const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2)),
                            );
                          }
                          // 已经加载够100个单词了，不再加载更多了。
                          else {
                            return Container(
                                padding: const EdgeInsets.all(16),
                                alignment: Alignment.center,
                                child: const Text("没有更多了！"));
                          }
                        }
                        // 不是列表尾部的普通条目，直接显示单词即可。
                        return ListTile(
                            title: Center(
                                child: Text("${index + 1} ${_words[index]}")));
                      },
                      separatorBuilder: (context, index) =>
                          const Divider(height: 0),
                      itemCount: _words.length),
                )),
      );
}
