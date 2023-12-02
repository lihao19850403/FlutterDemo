import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "卡片示例",
        home: Builder(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("卡片布局示例"),
                ),
                body: const Center(
                  child: SizedBox(
                      height: 300,
                      child: Card(
                        child: Column(children: <Widget>[
                          ListTile(
                            title: Text(
                              "深圳市南山区深南大道35号",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            subtitle: Text("创想科技有限公司"),
                            leading: Icon(Icons.home, color: Colors.blue),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              "深圳市罗湖区沿海大道32号",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            subtitle: Text("一木培训机构"),
                            leading: Icon(Icons.school, color: Colors.blue),
                          ),
                          Divider(),
                        ]),
                      )),
                ))),
      );
}
