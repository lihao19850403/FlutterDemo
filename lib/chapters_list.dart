import 'package:flutter/material.dart';
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
