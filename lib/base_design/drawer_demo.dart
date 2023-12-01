import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "抽屉示例",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("抽屉示例"),
          ),
          body: const Center(
            child: Text("左侧滑动拉出抽屉"),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: const Text("李浩"),
                  accountEmail: const Text("lihao_19850403@126.com"),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/head_icon_square.jpg"),
                  ),
                  onDetailsPressed: () {},
                  otherAccountsPictures: <Widget>[
                    Image.asset("assets/images/qr_demo.jpeg")
                  ],
                ),
                const ListTile(
                  leading: CircleAvatar(child: Icon(Icons.color_lens)),
                  title: Text("个性装扮"),
                ),
                const ListTile(
                  leading: CircleAvatar(child: Icon(Icons.photo)),
                  title: Text("我的相册"),
                ),
                const ListTile(
                  leading: CircleAvatar(child: Icon(Icons.wifi)),
                  title: Text("免流量特权"),
                ),
              ],
            ),
          ),
        ),
      );
}
