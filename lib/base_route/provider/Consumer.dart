import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/base_route/provider/ChangeNotifierProvider.dart';

class Consumer<T> extends StatelessWidget {
  final Widget Function(BuildContext context, T? value) builder;

  const Consumer({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builder(context, ChangeNotifierProvider.of<T>(context));
  }
}
