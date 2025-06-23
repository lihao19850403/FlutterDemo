import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/GradientButton.dart';
import 'dart:developer' as developer;

void main() => runApp(const GradientButtonRoute());

class GradientButtonRoute extends StatefulWidget {
  const GradientButtonRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GradientButtonRouteState();
}

class _GradientButtonRouteState extends State<GradientButtonRoute> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GradientButton(
            colors: const [Colors.orange, Colors.red],
            height: 50.0,
            width: 200,
            onPressed: () => onTap(1),
            child: const Text("Submit")),
        GradientButton(
            colors: const [Colors.lightGreen, Colors.lightBlue],
            height: 50.0,
            width: 200,
            onPressed: () => onTap(2),
            child: const Text("Submit")),
        GradientButton(
            colors: const [Colors.lightBlue, Colors.blueAccent],
            width: 200,
            onPressed: () => onTap(3),
            child: const Text("Submit")),
      ],
    );
  }

  onTap(int index) {
    developer.log("单击了按钮$index");
  }
}
