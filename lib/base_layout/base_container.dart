import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "容器布局",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Container容器布局"),
          ),
          body: Builder(
              builder: (context) => Container(
                    decoration: const BoxDecoration(color: Colors.grey),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 10, color: Colors.blueGrey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              margin: const EdgeInsets.all(4),
                              child:
                                  Image.asset("assets/images/container1.jpg"),
                            )),
                            Expanded(
                                child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 10, color: Colors.blueGrey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              margin: const EdgeInsets.all(4),
                              child:
                                  Image.asset("assets/images/container2.jpg"),
                            )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 10, color: Colors.blueGrey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              margin: const EdgeInsets.all(4),
                              child:
                                  Image.asset("assets/images/container3.jpeg"),
                            )),
                            Expanded(
                                child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 10, color: Colors.blueGrey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8))),
                              margin: const EdgeInsets.all(4),
                              child:
                                  Image.asset("assets/images/container4.jpg"),
                            )),
                          ],
                        ),
                      ],
                    ),
                  )),
        ),
      );
}
