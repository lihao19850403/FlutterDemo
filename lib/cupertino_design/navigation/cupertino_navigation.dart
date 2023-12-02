import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/cupertino_design/navigation/cupertino_chat.dart';
import 'package:flutter_demo_2023/cupertino_design/navigation/cupertino_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Cupertino navigation",
        theme: ThemeData.light(),
        home: const MyPage(),
      );
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<StatefulWidget> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) => CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: "首页", icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: "聊天", icon: Icon(CupertinoIcons.conversation_bubble))
        ],
      ),
      tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return const HomePage();
                case 1:
                  return const ChatPage();
                default:
                  return Container();
              }
            },
          ));
}
