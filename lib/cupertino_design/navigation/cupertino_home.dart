import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Builder(
      builder: (context) => CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text("主页"),
          ),
          child: Center(
            child: Text(
              "主页内容",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          )));
}
