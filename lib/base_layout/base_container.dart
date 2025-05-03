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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Container(
                                margin: const EdgeInsets.only(top: 50),
                                constraints: const BoxConstraints.tightFor(
                                    width: 200, height: 150),
                                decoration: const BoxDecoration(
                                    gradient: RadialGradient(
                                        colors: [Colors.red, Colors.orange],
                                        center: Alignment.topLeft,
                                        radius: .98),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54,
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 4.0)
                                    ]),
                                transform: Matrix4.rotationZ(.2),
                                alignment: Alignment.center,
                                child: const Text("5.20",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 40)),
                              ))
                            ])
                      ],
                    ),
                  )),
        ),
      );
}
