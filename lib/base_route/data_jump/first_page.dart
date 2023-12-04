import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/base_route/data_jump/product.dart';
import 'package:flutter_demo_2023/base_route/data_jump/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  List<Product> products = List<Product>.generate(
      30, (index) => Product("产品，序号　$index", "这是第$index号产品。"));

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "第一页",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("第一页"),
                  ),
                  body: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) => ListTile(
                            title: Text(products[index].title!),
                            leading: const Icon(Icons.tv),
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                      builder: (context) => SecondPage(
                                            extendedContext: context,
                                            extendedProduct: products[index],
                                          )))
                                  .then((value) {
                                Product item = value as Product;
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        "从第二个页面返回，携带数据是：\n${item.title}\n${item.description}")));
                              });
                            },
                          )),
                )),
      );
}
