import 'package:flutter/material.dart';

void main() => runApp(const TabBarSample());

// 标签数据。
class ItemView {
  // 标题。
  final String title;
  // 图标。
  final IconData icon;
  // 构造函数。
  const ItemView(this.title, this.icon);
}

// 标签列表。
const List<ItemView> items = <ItemView>[
  ItemView("自驾", Icons.directions_car),
  ItemView("自行车", Icons.directions_bike),
  ItemView("轮船", Icons.directions_boat),
  ItemView("公交车", Icons.directions_bus),
  ItemView("火车", Icons.directions_railway),
  ItemView("步行", Icons.directions_walk),
];

// 选中标签后展示的视图。
class SelectedView extends StatelessWidget {
  // 需要使用标签数据。
  final ItemView? item;
  // 构造函数。
  const SelectedView({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(item!.icon, size: 128, color: Colors.lightGreenAccent),
              Text(item!.title, style: const TextStyle(fontSize: 32))
            ],
          ),
        ),
      );
}

// 页面结构。
class TabBarSample extends StatelessWidget {
  const TabBarSample({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "标签页",
        home: DefaultTabController(
          length: items.length,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("TabBar选项卡示例"),
              bottom: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.center,
                tabs: items
                    .map((item) => Tab(
                          text: item.title,
                          icon: Icon(item.icon),
                        ))
                    .toList(),
              ),
            ),
            body: TabBarView(
              children: items
                  .map((item) => Padding(
                        padding: const EdgeInsets.all(16),
                        child: SelectedView(item: item),
                      ))
                  .toList(),
            ),
          ),
        ),
      );
}
