import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/base_route/call_native/native_lib.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "调用原生方法",
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text("调用原生方法"),
                  ),
                  body: Center(
                      child: ElevatedButton(
                    child: const Text("获取平台信息"),
                    onPressed: () {
                      NativeLib.getPlatformVersion().then((platformVersion) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(platformVersion)));
                      }).onError((error, stackTrace) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "发生了异常。\n异常信息：${error.toString()}\n细节：${stackTrace.toString()}")));
                        return null;
                      });
                    },
                  )),
                )),
      );
}
