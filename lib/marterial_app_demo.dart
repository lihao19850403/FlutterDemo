import 'package:flutter/material.dart';
import 'dart:developer' as developer;
//
import 'base_views/main.dart' as file_main;
import 'base_views/base_container.dart' as file_container;
import 'base_views/base_text.dart' as file_text;
import 'base_views/base_image.dart' as file_image;
import 'base_views/base_icon.dart' as file_icon;
import 'base_views/base_icon_button.dart' as file_icon_button;
import 'base_views/base_listview.dart' as file_listview;
import 'base_views/base_horizontal_listview.dart' as file_horizontal_listview;
import 'base_views/base_listview_builder.dart' as file_listview_builder;
import 'base_views/base_gridview.dart' as file_gridview;
import 'base_views/base_Form.dart' as file_form;
//
import 'base_design/scaffold_demo.dart' as design_scaffold;
import 'base_design/tabbar_demo.dart' as design_tabbar;

void main() => runApp(const MyApp());

// 章节数据。
class Chapter {
  // 标题。
  final String title;
  // 内容列表。
  final List<SubChapter> contents;
  // 构造函数。
  const Chapter(this.title, this.contents);
}

// 小节数据。
class SubChapter {
  // 小节路由。
  final String routeName;
  // 小节名称。
  final String title;
  // 小节跳转目的地。
  final Widget destPage;
  // 构造函数。
  const SubChapter(this.routeName, this.title, this.destPage);
}

// 章节列表。
List<Chapter> chapters = <Chapter>[
  Chapter("常用组件", <SubChapter>[
    const SubChapter('/main', 'main页面', file_main.MyApp()),
    const SubChapter('/container', '基本容器页面', file_container.MyApp()),
    const SubChapter('/text', '文本控件页面', file_text.MyApp()),
    const SubChapter('/image', '图像控件页面', file_image.MyApp()),
    const SubChapter('/icon', '图标控件页面', file_icon.MyApp()),
    const SubChapter('/icon_button', '图标按钮控件页面', file_icon_button.MyApp()),
    const SubChapter('/listview', '纵向列表页面', file_listview.MyApp()),
    const SubChapter('/h_listview', '横向列表页面', file_horizontal_listview.MyApp()),
    SubChapter(
        '/listview_builder',
        '列表内容构造器示例页面',
        file_listview_builder.MyApp(
            items: List<String>.generate(500, (index) => "Item $index"))),
    const SubChapter('/gridview', '网格列表控件页面', file_gridview.MyApp()),
    const SubChapter('/form', '表单示例页面', file_form.MyApp()),
  ]),
  const Chapter("Material", <SubChapter>[
    SubChapter('/design_scaffold', '脚手架示例页面', design_scaffold.MyApp()),
    SubChapter('/design_tabbar', '标签页示例页面', design_tabbar.TabBarSample()),
  ])
];

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
          "MaterialApp示例",
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
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: ChapterContentView(
                      chapter: chapter,
                    ),
                  ))
              .toList()));
}
