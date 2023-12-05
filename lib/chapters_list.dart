import 'package:flutter/material.dart';
// 第一章。
import 'package:flutter_demo_2023/base_views/main.dart' as file_main;
import 'package:flutter_demo_2023/base_views/base_container.dart'
    as file_container;
import 'package:flutter_demo_2023/base_views/base_text.dart' as file_text;
import 'package:flutter_demo_2023/base_views/base_image.dart' as file_image;
import 'package:flutter_demo_2023/base_views/base_icon.dart' as file_icon;
import 'package:flutter_demo_2023/base_views/base_icon_button.dart'
    as file_icon_button;
import 'package:flutter_demo_2023/base_views/base_listview.dart'
    as file_listview;
import 'package:flutter_demo_2023/base_views/base_horizontal_listview.dart'
    as file_horizontal_listview;
import 'package:flutter_demo_2023/base_views/base_listview_builder.dart'
    as file_listview_builder;
import 'package:flutter_demo_2023/base_views/base_gridview.dart'
    as file_gridview;
import 'package:flutter_demo_2023/base_views/base_Form.dart' as file_form;
// 第二章。
import 'package:flutter_demo_2023/base_design/scaffold_demo.dart'
    as design_scaffold;
import 'package:flutter_demo_2023/base_design/tabbar_demo.dart'
    as design_tabbar;
import 'package:flutter_demo_2023/base_design/drawer_demo.dart'
    as design_drawer;
import 'package:flutter_demo_2023/base_design/btns_and_diags_demo.dart'
    as design_btn_diags;
import 'package:flutter_demo_2023/base_design/textfield_demo.dart'
    as design_textfield;
import 'package:flutter_demo_2023/base_design/card_demo.dart' as design_card;
import 'package:flutter_demo_2023/cupertino_design/cupertino_loading.dart'
    as cupertino_loading;
import 'package:flutter_demo_2023/cupertino_design/cupertino_btn_alertdiag.dart'
    as cupertino_btn_alertdiag;
import 'package:flutter_demo_2023/cupertino_design/navigation/cupertino_navigation.dart'
    as cupertino_navigation;
// 第三章。
import 'package:flutter_demo_2023/base_layout/base_container.dart'
    as base_container;
import 'package:flutter_demo_2023/base_layout/base_center.dart' as base_center;
import 'package:flutter_demo_2023/base_layout/base_padding.dart'
    as base_padding;
import 'package:flutter_demo_2023/base_layout/base_alignment.dart'
    as base_alignment;
import 'package:flutter_demo_2023/base_layout/base_row_column.dart'
    as base_row_column;
import 'package:flutter_demo_2023/base_layout/base_fittedbox.dart'
    as base_fittedbox;
import 'package:flutter_demo_2023/base_layout/base_stack.dart' as base_stack;
import 'package:flutter_demo_2023/base_layout/base_positioned.dart'
    as base_positioned;
import 'package:flutter_demo_2023/base_layout/base_indexedstack.dart'
    as base_indexedstack;
import 'package:flutter_demo_2023/base_layout/base_overflowbox.dart'
    as base_overflowbox;
import 'package:flutter_demo_2023/base_layout/base_sizedbox.dart'
    as base_sizedbox;
import 'package:flutter_demo_2023/base_layout/base_constrainedbox.dart'
    as base_constrainedbox;
import 'package:flutter_demo_2023/base_layout/base_limittedbox.dart'
    as base_limittedbox;
import 'package:flutter_demo_2023/base_layout/base_aspectradio.dart'
    as base_aspectradio;
import 'package:flutter_demo_2023/base_layout/base_fractionallysizedbox.dart'
    as base_fractionallysizedbox;
import 'package:flutter_demo_2023/base_layout/base_gridview.dart'
    as base_gridview;
import 'package:flutter_demo_2023/base_layout/base_table.dart' as base_table;
import 'package:flutter_demo_2023/base_layout/base_transform.dart'
    as base_transform;
import 'package:flutter_demo_2023/base_layout/base_baseline.dart'
    as base_baseline;
import 'package:flutter_demo_2023/base_layout/base_offstage.dart'
    as base_offstage;
import 'package:flutter_demo_2023/base_layout/base_wrap.dart' as base_wrap;
import 'package:flutter_demo_2023/base_layout/base_fulldemo.dart'
    as base_fulldemo;
// 第四章。
import 'package:flutter_demo_2023/base_gesture/base_gesture.dart'
    as gesture_base;
import 'package:flutter_demo_2023/base_gesture/removeable_list.dart'
    as gesture_removeablelist;
import 'package:flutter_demo_2023/base_gesture/load_file.dart'
    as gesture_loadfile;
import 'package:flutter_demo_2023/base_gesture/custom_ttf.dart'
    as gesture_custom_ttf;
// 第五章。
import 'package:flutter_demo_2023/base_route/normal_jump/first_page.dart'
    as jump_normal;
import 'package:flutter_demo_2023/base_route/data_jump/first_page.dart'
    as jump_data;
import 'package:flutter_demo_2023/base_route/call_native/call_native.dart'
    as jump_call_native;
// 第六章。
import 'package:flutter_demo_2023/custom_view/custom_opacity.dart'
    as custom_opacity;
import 'package:flutter_demo_2023/custom_view/custom_border_shade.dart'
    as custom_border_shade;
import 'package:flutter_demo_2023/custom_view/custom_gradient.dart'
    as custom_gradient;
import 'package:flutter_demo_2023/custom_view/custom_rotated90box.dart'
    as custom_rotated90box;
import 'package:flutter_demo_2023/custom_view/custom_round_clip.dart'
    as custom_round_clip;
import 'package:flutter_demo_2023/custom_view/custom_rect_clip.dart'
    as custom_rect_clip;
import 'package:flutter_demo_2023/custom_view/custom_path_clip.dart'
    as custom_path_clip;
import 'package:flutter_demo_2023/custom_view/custom_draw_line.dart'
    as custom_draw_line;
import 'package:flutter_demo_2023/custom_view/custom_draw_circle.dart'
    as custom_draw_circle;
import 'package:flutter_demo_2023/custom_view/custom_draw_oval.dart'
    as custom_draw_oval;
import 'package:flutter_demo_2023/custom_view/custom_draw_round_rect.dart'
    as custom_draw_round_rect;
import 'package:flutter_demo_2023/custom_view/custom_draw_double_rect.dart'
    as custom_draw_double_rect;
import 'package:flutter_demo_2023/custom_view/custom_draw_point.dart'
    as custom_draw_point;
import 'package:flutter_demo_2023/custom_view/custom_draw_arc.dart'
    as custom_draw_arc;
import 'package:flutter_demo_2023/custom_view/custom_draw_path.dart'
    as custom_draw_path;
import 'package:flutter_demo_2023/custom_view/custom_anim_opacity.dart'
    as custom_anim_opacity;
import 'package:flutter_demo_2023/custom_view/hero/first_page.dart'
    as custom_hero_jump;

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
  // 第一章。
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
  // 第二章。
  const Chapter("框架元素", <SubChapter>[
    SubChapter('/design_scaffold', '脚手架示例页面', design_scaffold.MyApp()),
    SubChapter('/design_tabbar', '标签页示例页面', design_tabbar.TabBarSample()),
    SubChapter('/design_drawer', '抽屉示例页面', design_drawer.MyApp()),
    SubChapter('/design_btn_diags', '按钮与对话框页面', design_btn_diags.MyApp()),
    SubChapter('/design_textfield', '文本输入框示例页面', design_textfield.MyApp()),
    SubChapter('/design_card', '卡片示例页面', design_card.MyApp()),
    SubChapter(
        '/cupertino_loading', 'Cupertino风格加载框示例页面', cupertino_loading.MyApp()),
    SubChapter('/cupertino_btn_alertdiag', 'Cupertino风格按钮与告警框',
        cupertino_btn_alertdiag.MyApp()),
    SubChapter(
        '/cupertino_navigation', 'Cupertino导航页面', cupertino_navigation.MyApp()),
  ]),
  // 第三章。
  const Chapter("页面布局", <SubChapter>[
    SubChapter("/layout_container", "Container", base_container.MyApp()),
    SubChapter("/layout_center", "Center居中布局", base_center.MyApp()),
    SubChapter("/layout_padding", "Padding内边距", base_padding.MyApp()),
    SubChapter("/layout_alignment", "Align对齐布局", base_alignment.MyApp()),
    SubChapter("/layout_row_column", "Row、Column横纵布局", base_row_column.MyApp()),
    SubChapter("/layout_fittedbox", "FittedBox缩放布局", base_fittedbox.MyApp()),
    SubChapter("/layout_stack", "Stack层叠布局", base_stack.MyApp()),
    SubChapter("/layout_positioned", "Positioned定位布局", base_positioned.MyApp()),
    SubChapter("/layout_indexedstack", "IndexedStack带顺序的层叠布局",
        base_indexedstack.MyApp()),
    SubChapter("/layout_overflowbox", "OverflowBox容器（能够溢出父容器）",
        base_overflowbox.MyApp()),
    SubChapter("/layout_sizedbox", "SizedBox容器（固定尺寸）", base_sizedbox.MyApp()),
    SubChapter("/layout_constrainedbox", "ConstrainedBox容器（限定尺寸范围）",
        base_constrainedbox.MyApp()),
    SubChapter("/layout_limittedbox", "LimittedBox容器（限定最大尺寸范围）",
        base_limittedbox.MyApp()),
    SubChapter(
        "/layout_aspectradio", "AspectRadio限定宽高比", base_aspectradio.MyApp()),
    SubChapter("/layout_fractionallysizedbox", "FractionallySizedBox百分比布局",
        base_fractionallysizedbox.MyApp()),
    SubChapter("/layout_gridview", "GridView网格布局", base_gridview.MyApp()),
    SubChapter("/layout_table", "Table表格布局", base_table.MyApp()),
    SubChapter("/layout_transform", "Transform矩阵变换", base_transform.MyApp()),
    SubChapter("/layout_baseline", "Baseline基准线布局", base_baseline.MyApp()),
    SubChapter("/layout_offstage", "Offstage控件显隐", base_offstage.MyApp()),
    SubChapter("/layout_wrap", "Wrap自动折行", base_wrap.MyApp()),
    SubChapter("/layout_fulldemo", "综合案例", base_fulldemo.MyApp()),
  ]),
  // 第四章。
  const Chapter("手势/资源", <SubChapter>[
    SubChapter("/gesture_base", "基本手势", gesture_base.MyApp()),
    SubChapter(
        "/gesture_removeable_list", "可滑动删除的列表", gesture_removeablelist.MyApp()),
    SubChapter("/gesture_loadfile", "异步加载文件", gesture_loadfile.MyApp()),
    SubChapter("/gesture_custom_ttf", "加载字体", gesture_custom_ttf.MyApp()),
  ]),
  // 第五章。
  Chapter("跳转/路由", <SubChapter>[
    const SubChapter("/jump_normal", "普通页面跳转", jump_normal.FirstPage()),
    SubChapter("/jump_data", "页面跳转，收发数据", jump_data.FirstPage()),
    const SubChapter("/jump_call_native", "调用原生方法", jump_call_native.MyApp()),
  ]),
  // 第六章。
  const Chapter("自绘/动效", <SubChapter>[
    SubChapter("/custom_opacity", "透明度处理", custom_opacity.MyApp()),
    SubChapter("/custom_border_shade", "圆角边框+阴影", custom_border_shade.MyApp()),
    SubChapter("/custom_gradient", "线性渐变与圆形渐变", custom_gradient.MyApp()),
    SubChapter(
        "/custom_rotated90box", "旋转盒子，每次右旋90度", custom_rotated90box.MyApp()),
    SubChapter("/custom_round_clip", "圆和圆角矩形裁剪", custom_round_clip.MyApp()),
    SubChapter("/custom_rect_clip", "自定义矩形裁剪", custom_rect_clip.MyApp()),
    SubChapter("/custom_path_clip", "自定义路径裁剪", custom_path_clip.MyApp()),
    SubChapter("/custom_draw_line", "绘制直线", custom_draw_line.MyApp()),
    SubChapter("/custom_draw_circle", "绘制圆", custom_draw_circle.MyApp()),
    SubChapter("/custom_draw_oval", "绘制椭圆", custom_draw_oval.MyApp()),
    SubChapter(
        "/custom_draw_round_rect", "绘制圆角矩形", custom_draw_round_rect.MyApp()),
    SubChapter(
        "/custom_draw_double_rect", "绘制嵌套矩形", custom_draw_double_rect.MyApp()),
    SubChapter("/custom_draw_point", "绘制点", custom_draw_point.MyApp()),
    SubChapter("/custom_draw_arc", "绘制圆弧", custom_draw_arc.MyApp()),
    SubChapter("/custom_draw_path", "绘制路径", custom_draw_path.MyApp()),
    SubChapter("/custom_anim_opacity", "显隐动画举例", custom_anim_opacity.MyApp()),
    SubChapter(
        "/custom_hero_jump", "Hero页面跳转动画举例", custom_hero_jump.FirstPage()),
  ]),
];
