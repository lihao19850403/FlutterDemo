import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

Row demoRow(BoxFit boxFitType) => Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 40,
          color: Colors.green,
          child: FittedBox(
            alignment: Alignment.center,
            fit: boxFitType,
            child: Container(
              color: Colors.deepOrange,
              child: const Text("BoxFit\nCover"),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 40,
          height: 100,
          color: Colors.green,
          child: FittedBox(
            alignment: Alignment.center,
            fit: boxFitType,
            child: Container(
              color: Colors.deepOrange,
              child: const Text("BoxFit\nCover"),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
          child: FittedBox(
            alignment: Alignment.center,
            fit: boxFitType,
            child: Container(
              color: Colors.deepOrange,
              child: const Text("BoxFit\nCover"),
            ),
          ),
        ),
      ],
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "FittedBox Demo",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("FittedBox缩放布局"),
          ),
          body: Builder(
              builder: (context) => ListView(
                    children: <Widget>[
                      const Text("BoxFit.none：保持原始尺寸"),
                      demoRow(BoxFit.none),
                      const Text("BoxFit.fill：拉伸子控件"),
                      demoRow(BoxFit.fill),
                      const Text("BoxFit.contain：保持一边不被裁剪，另一边充满父容器"),
                      demoRow(BoxFit.contain),
                      const Text("BoxFit.cover：一边必须填满父控件，另一边有可能超出父控件"),
                      demoRow(BoxFit.cover),
                      const Text("BoxFit.cover：宽填满父控件，另一边有可能超出父控件"),
                      demoRow(BoxFit.fitWidth),
                      const Text("BoxFit.cover：高填满父控件，另一边有可能超出父控件"),
                      demoRow(BoxFit.fitHeight),
                      const Text("BoxFit.cover：内容不会超过容器范围，视情况而定"),
                      demoRow(BoxFit.scaleDown),
                    ],
                  )),
        ),
      );
}
