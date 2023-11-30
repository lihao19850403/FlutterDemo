import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 全局key，用来获取表单组件。
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  // 用户名。
  String? userName;

  // 密码。
  String? password;

  // 登录函数。
  void login() {
    var loginForm = loginKey.currentState;
    if (loginForm != null && loginForm.validate()) {
      loginForm.save();
      developer.log("表单内容有效，用户名：$userName，密码：$password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form Demo",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Form表单示例"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(labelText: "请输入用户名"),
                      onSaved: (value) => userName = value,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "请输入密码"),
                      obscureText: true, // 密文显示。
                      validator: (value) =>
                          value!.length < 6 ? "密码长度不够6位" : null,
                      onSaved: (value) => password = value,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 340,
              height: 42,
              child: ElevatedButton(
                onPressed: login,
                child: const Text(
                  "登录",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
