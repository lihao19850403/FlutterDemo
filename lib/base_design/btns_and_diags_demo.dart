import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const List conferenceItems = [
  {"addMember": "添加成员"},
  {"lockConference": "锁定会议"},
  {"modifyLayout": "修改布局"},
  {"turnOffAll": "挂断所有"},
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "按钮与对话框",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("按钮与对话框"),
                    actions: [
                      PopupMenuButton(onSelected: (value) {
                        final snackBar = SnackBar(
                          content: Text('点击了弹出菜单项：$value'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }, itemBuilder: (context) {
                        List<PopupMenuItem> popupMenuItems = [];
                        for (Map element in conferenceItems) {
                          String value = element.entries.first.value;
                          var item = PopupMenuItem(
                            value: element.entries.first,
                            child: Text(value),
                          );
                          popupMenuItems.add(item);
                        }
                        return popupMenuItems;
                      })
                    ],
                  ),
                  body: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        children: <Widget>[
                          TextButton(
                              onPressed: () {
                                const snackBar = SnackBar(
                                  content: Text('点击了文字按扭'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: const Text("TextButton（原FlatButton）")),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    List<SimpleDialogOption> options = [];
                                    for (Map element in conferenceItems) {
                                      var item = SimpleDialogOption(
                                        child:
                                            Text(element.entries.first.value),
                                        onPressed: () {},
                                      );
                                      options.add(item);
                                    }
                                    return SimpleDialog(
                                      title: const Text("一个简单的对话框"),
                                      children: options,
                                    );
                                  });
                            },
                            child: const Text(
                              "ElevatedButton(原RaisedButton)，弹出一个简单的对话框",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: const Text("提示"),
                                          content: const SingleChildScrollView(
                                            child: ListBody(
                                              children: <Widget>[
                                                Text("是否要删除？"),
                                                Text("一旦删除数据不可恢复！")
                                              ],
                                            ),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                                onPressed: () {},
                                                child: const Text("确定")),
                                            TextButton(
                                                onPressed: () {},
                                                child: const Text("取消")),
                                          ],
                                        ));
                              },
                              child: const Text("弹出警示对话框"))
                        ],
                      )),
                  floatingActionButton: FloatingActionButton(
                    tooltip: "此处是一个悬浮按钮",
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    elevation: 7,
                    highlightElevation: 14,
                    mini: false,
                    shape: const CircleBorder(),
                    isExtended: false,
                    onPressed: () {
                      const snackBar = SnackBar(
                        content: Text('点击了悬浮按钮'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Icon(Icons.add),
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                )),
      );
}
