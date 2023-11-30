import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "脚手架Demo",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Scaffold脚手架示例"),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                tooltip: "搜索",
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                tooltip: "添加",
              )
            ],
          ),
          body: MyHomePage(),
          // bottomNavigationBar: BottomAppBar(
          //   child: Container(
          //     height: 50,
          //   ),
          // ),
          // floatingActionButton: FloatingActionButton(
          //   tooltip: "添加",
          //   child: const Icon(Icons.add),
          //   onPressed: () {},
          // ),
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
        ),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 当前选中项的索引。
  int _selectedIndex = 1; // 默认是通讯录。
  // 选中页提示信息。
  final _widgetOptions = const [
    Text('Index 0：信息'),
    Text('Index 1：通讯录'),
    Text('Index 2：发现')
  ];
  // 底部导航条按下时候的回调。
  void _onItemTapped(int index) => setState(() => _selectedIndex = index);
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "信息"),
            BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "通讯录"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "发现"),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.lightGreen,
          onTap: _onItemTapped,
        ),
      );
}
