import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "OverflowBox Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("OverflowBox溢出容器"),
          ),
          body: Builder(
              builder: (context) => Column(
                    children: <Widget>[
                      const Text("不使用可溢出布局的情形：（子控件实际尺寸为300×300）"),
                      Container(
                        color: Colors.green,
                        width: 200,
                        height: 200,
                        padding: const EdgeInsets.all(50),
                        child: Container(
                          color: Colors.blueGrey,
                          width: 300,
                          height: 300,
                        ),
                      ),
                      const Text("在父容器与子容器之间增加一层OverflowBox布局的情形："),
                      Container(
                        color: Colors.green,
                        width: 200,
                        height: 200,
                        padding: const EdgeInsets.all(50),
                        child: OverflowBox(
                          // 增加一层OverflowBox。
                          alignment: Alignment.topLeft,
                          maxWidth: 400,
                          maxHeight: 400,
                          child: Container(
                            color: Colors.blueGrey,
                            width: 300,
                            height: 300,
                          ),
                        ),
                      )
                    ],
                  )),
        ),
      );
}
