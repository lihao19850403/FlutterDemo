import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/base_route/provider/ChangeNotifierProvider.dart';
import 'package:flutter_demo_2023/base_route/provider/Consumer.dart';
import 'package:flutter_demo_2023/base_route/provider/models/CartModel.dart';
import 'package:flutter_demo_2023/base_route/provider/models/Item.dart';

void main() => runApp(const ProviderRoute());

class ProviderRoute extends StatefulWidget {
  const ProviderRoute({super.key});

  @override
  State<StatefulWidget> createState() => _ProviderRouteState();
}

class _ProviderRouteState extends State<ProviderRoute> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: ChangeNotifierProvider<CartModel>(
                data: CartModel(),
                child: Builder(builder: (BuildContext context) {
                  return Column(children: <Widget>[
                    Consumer<CartModel>(
                        builder: (BuildContext context, CartModel? cart) =>
                            Text('\n\n\n\n总价：${cart?.totalPrice}')),
                    Builder(builder: (BuildContext context) {
                      return ElevatedButton(
                          onPressed: () {
                            ChangeNotifierProvider.of<CartModel>(context,
                                    listen: false)
                                ?.add(Item(20.0, 2));
                          },
                          child: const Text("添加商品"));
                    })
                  ]);
                }))));
  }
}
