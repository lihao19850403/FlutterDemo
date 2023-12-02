import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Cupertino按钮与告警框",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("Cupertino按钮与告警框"),
                  ),
                  body: Center(
                    child: CupertinoButton(
                      color: Colors.blue,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => CupertinoAlertDialog(
                                  title: const Text("提示"),
                                  content: const SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text("是否需要删除？"),
                                        Text("删除后不可恢复！")
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    CupertinoDialogAction(
                                      child: const Text("确定"),
                                      onPressed: () {},
                                    ),
                                    CupertinoDialogAction(
                                      child: const Text("取消"),
                                      onPressed: () {},
                                    )
                                  ],
                                ));
                      },
                      child: const Text(
                        "Cupertino风格按钮",
                      ),
                    ),
                  ),
                )),
      );
}
