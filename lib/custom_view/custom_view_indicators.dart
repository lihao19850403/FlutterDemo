import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/utils/GradientCircularProgressIndicator.dart';
import 'dart:math' as Math;

void main() => runApp(const GradientCircularProgressRoute());

class GradientCircularProgressRoute extends StatefulWidget {
  const GradientCircularProgressRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => GradientCircularProgressRouteState();
}

class GradientCircularProgressRouteState
    extends State<GradientCircularProgressRoute> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    bool isForward = true;
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        isForward = true;
      } else if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        if (isForward) {
          _animationController.reverse();
        } else {
          _animationController.forward();
        }
      } else if (status == AnimationStatus.reverse) {
        isForward = false;
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, child) {
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: <Widget>[
                        Wrap(
                            spacing: 10.0,
                            runSpacing: 16.0,
                            children: <Widget>[
                              GradientCircularProgressIndicator(
                                radius: 50.0,
                                colors: const [Colors.blue, Colors.blue],
                                strokeWidth: 3.0,
                                value: _animationController.value,
                              ),
                              GradientCircularProgressIndicator(
                                radius: 50.0,
                                colors: const [Colors.red, Colors.orange],
                                strokeWidth: 3.0,
                                value: _animationController.value,
                              ),
                              GradientCircularProgressIndicator(
                                radius: 50.0,
                                colors: const [
                                  Colors.red,
                                  Colors.orange,
                                  Colors.red
                                ],
                                strokeWidth: 5.0,
                                value: _animationController.value,
                              ),
                              GradientCircularProgressIndicator(
                                  radius: 50.0,
                                  colors: const [Colors.teal, Colors.cyan],
                                  strokeWidth: 5.0,
                                  strokeCapRound: true,
                                  value: CurvedAnimation(
                                          parent: _animationController,
                                          curve: Curves.decelerate)
                                      .value),
                              GradientCircularProgressIndicator(
                                  radius: 50.0,
                                  colors: const [
                                    Colors.red,
                                    Colors.orange,
                                    Colors.red
                                  ],
                                  strokeWidth: 5.0,
                                  strokeCapRound: true,
                                  backgroundColor: Colors.red.shade50,
                                  totalAngle: 1.5 * Math.pi,
                                  value: CurvedAnimation(
                                          parent: _animationController,
                                          curve: Curves.ease)
                                      .value),
                              RotatedBox(
                                  quarterTurns: 1,
                                  child: GradientCircularProgressIndicator(
                                    radius: 50.0,
                                    colors: [
                                      Colors.blue.shade700,
                                      Colors.blue.shade200
                                    ],
                                    strokeWidth: 3.0,
                                    strokeCapRound: true,
                                    backgroundColor: Colors.transparent,
                                    value: _animationController.value,
                                  )),
                              GradientCircularProgressIndicator(
                                  radius: 50.0,
                                  colors: [
                                    Colors.red,
                                    Colors.amber,
                                    Colors.cyan,
                                    Colors.green.shade200,
                                    Colors.blue,
                                    Colors.red
                                  ],
                                  strokeWidth: 5.0,
                                  strokeCapRound: true,
                                  value: _animationController.value),
                            ]),
                        GradientCircularProgressIndicator(
                            radius: 100.0,
                            colors: [
                              Colors.blue.shade700,
                              Colors.blue.shade200
                            ],
                            strokeWidth: 20.0,
                            value: _animationController.value),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: GradientCircularProgressIndicator(
                                radius: 100.0,
                                colors: [
                                  Colors.blue.shade700,
                                  Colors.blue.shade300
                                ],
                                strokeWidth: 20.0,
                                strokeCapRound: true,
                                value: _animationController.value)),
                        ClipRect(
                            child: Align(
                                alignment: Alignment.topCenter,
                                heightFactor: .5,
                                child: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: SizedBox(
                                        child:
                                            GradientCircularProgressIndicator(
                                                radius: 100.0,
                                                colors: [
                                                  Colors.teal,
                                                  Colors.cyan.shade500
                                                ],
                                                strokeWidth: 8.0,
                                                totalAngle: Math.pi,
                                                strokeCapRound: true,
                                                value: _animationController
                                                    .value))))),
                        SizedBox(
                            height: 104.0,
                            width: 200.0,
                            child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Positioned(
                                      height: 200.0,
                                      top: .0,
                                      child: GradientCircularProgressIndicator(
                                          radius: 100.0,
                                          colors: [
                                            Colors.teal,
                                            Colors.cyan.shade500
                                          ],
                                          strokeWidth: 8.0,
                                          value: _animationController.value,
                                          totalAngle: Math.pi,
                                          strokeCapRound: true)),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                          "${(_animationController.value * 100).toInt()}%",
                                          style: const TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.blueGrey)))
                                ]))
                      ],
                    ));
              })
        ],
      ),
    ));
  }
}
