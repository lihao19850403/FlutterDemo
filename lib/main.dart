import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/utils/ErrorHandler.dart';
import 'chapters_list.dart';

void main() {
  var originalOnError = FlutterError.onError;
  FlutterError.onError = (FlutterErrorDetails details) {
    originalOnError?.call(details);
    reportErrorAndLog(details);
  };
  runZoned(
    () => runApp(const MyApp()),
    zoneSpecification: ZoneSpecification(
      // 拦截print：
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        collectLog(line);
      },
      // UncaughtExceptionHandler：
      handleUncaughtError: (Zone self, ZoneDelegate parent, Zone zone, Object error, StackTrace stackTrace) {
        var errorDetails = FlutterErrorDetails(exception: error).copyWith(
          stack: stackTrace
        );
        reportErrorAndLog(errorDetails);
        parent.print(zone, '${error.toString()} $stackTrace');
      }
    )
  );
}

// 选中章节后展示的视图。
class ChapterContentView extends StatelessWidget {
  // 需要使用标签数据。
  final Chapter? chapter;
  // 构造函数。
  const ChapterContentView({Key? key, this.chapter}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: chapter?.contents.length,
        itemBuilder: (context, index) {
          SubChapter subChapter = chapter!.contents.elementAt(index);
          return ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, subChapter.routeName),
              child: Text(subChapter.title));
        },
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 创建路由。
  Map<String, WidgetBuilder> createRoutes(BuildContext context) {
    Map<String, WidgetBuilder> result = {};
    for (var chapter in chapters) {
      for (var subChapter in chapter.contents) {
        String routeName = subChapter.routeName;
        widgetBuilder(context) => subChapter.destPage;
        result[routeName] = widgetBuilder;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "MaterialAppDemo",
        theme: ThemeData(
            // 设置主题。
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            brightness: Brightness.light,
            primaryColor: Colors.lightGreen[600]),
        home: DefaultTabController(
            length: chapters.length, child: const MyHomePage()),
        // 路由导航。
        routes: createRoutes(context),
        // 初始页面。（此处不使用）
        // initialRoute: '/main',
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "Flutter基础示例",
          style: TextStyle(color: Colors.white),
        ),
        bottom: TabBar(
          isScrollable: true,
          labelColor: Colors.white,
          tabAlignment: TabAlignment.center,
          tabs: chapters
              .map((chapter) => Tab(
                    text: chapter.title,
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
          children: chapters
              .map((chapter) => Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ChapterContentView(
                      chapter: chapter,
                    ),
                  ))
              .toList()));
}
