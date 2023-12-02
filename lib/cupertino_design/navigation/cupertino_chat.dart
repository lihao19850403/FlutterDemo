import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) => Builder(
      builder: (context) => CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            leading: Icon(CupertinoIcons.back),
            middle: Text("聊天窗口"),
            trailing: Icon(CupertinoIcons.add),
          ),
          child: Center(
            child: Text(
              "聊天窗口",
              style: Theme.of(context).textTheme.button,
            ),
          )));
}
