import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    controller.addListener(() {
      developer.log("监听器：${controller.toString()}");
    });

    return MaterialApp(
      title: "文本输入框",
      home: Builder(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("文本输入框示例"),
                ),
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: controller,
                      maxLength: 30,
                      maxLines: 1,
                      autocorrect: true,
                      autofocus: true,
                      obscureText: false,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 26, color: Colors.green),
                      onChanged: (text) => developer.log("文本内容改变：$text"),
                      onSubmitted: (text) => developer.log("提交：$text"),
                      enabled: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          helperText: "用户名",
                          prefixIcon: const Icon(Icons.person),
                          suffixText: "后缀"),
                    ),
                  ),
                ),
              )),
    );
  }
}
