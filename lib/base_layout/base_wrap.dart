import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Wrap Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Wrap自动折行布局"),
          ),
          body: Builder(
              builder: (context) => Wrap(
                    spacing: 8, // 行中item间距。
                    runSpacing: 16, // 折行后行间距。
                    children: <Widget>[
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.lightGreen.shade800,
                          child: const Text(
                            "西门",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        label: const Text("西门吹雪"),
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.lightGreen.shade800,
                          child: const Text(
                            "司空",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        label: const Text("司空摘星"),
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.lightGreen.shade800,
                          child: const Text(
                            "婉清",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        label: const Text("木婉清"),
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.lightGreen.shade800,
                          child: const Text(
                            "一郎",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        label: const Text("萧十一郎"),
                      ),
                    ],
                  )),
        ),
      );
}
