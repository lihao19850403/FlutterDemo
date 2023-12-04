import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/base_route/data_jump/product.dart';

class SecondPage extends StatelessWidget {
  // 从上一个页面继承来的context。
  BuildContext? extendedContext;

  // 从上一个页面继承来的产品信息。
  Product? extendedProduct;

  SecondPage({super.key, this.extendedContext, this.extendedProduct});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "第二页",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("第二页"),
                  ),
                  body: Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(extendedContext!).pop(extendedProduct);
                          },
                          child:
                              Text("${extendedProduct!.description}\n退出本页"))),
                )),
      );
}
