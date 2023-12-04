import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Table Demo",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Table表格布局"),
            ),
            body: Center(
              child: Table(
                border: TableBorder.all(
                    color: Colors.black38, width: 2, style: BorderStyle.solid),
                columnWidths: const <int, TableColumnWidth>{
                  0: FixedColumnWidth(100),
                  1: FixedColumnWidth(40),
                  2: FixedColumnWidth(80),
                  3: FixedColumnWidth(80),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: const <TableRow>[
                  TableRow(children: <Widget>[
                    Text(
                      "姓名",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "性别",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "年龄",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "身高",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Text("张三"),
                    Text("男"),
                    Text("26"),
                    Text("172cm"),
                  ]),
                  TableRow(children: <Widget>[
                    Text("李四"),
                    Text("男"),
                    Text("28"),
                    Text("178cm"),
                  ]),
                ],
              ),
            )),
      );
}
