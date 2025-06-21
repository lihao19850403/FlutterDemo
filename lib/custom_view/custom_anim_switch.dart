import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/SlideTransitionX.dart';

void main() => runApp(const AnimatedSwitcherCounterRoute());

class AnimatedSwitcherCounterRoute extends StatefulWidget {
  const AnimatedSwitcherCounterRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AnimatedSwitcherCounterRouteState();
  }
}

class _AnimatedSwitcherCounterRouteState
    extends State<AnimatedSwitcherCounterRoute> {
  int INTERVAL = 1; // 间隔1秒。
  Timer? _timer; // 定时器。
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _timer ??= Timer.periodic(Duration(seconds: INTERVAL), (timer) {
      setState(() {
        _count++;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "元素切换动画",
        home: Scaffold(
          appBar: AppBar(centerTitle: true, title: const Text("元素切换动画")),
          body: Builder(
              builder: (context) => Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("元素交替显隐动画："),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );
                        },
                        child: Text(
                          '$_count',
                          // 此处key会不停变化，这样系统就认为每次都是不同的Text，从而进行不同组件间的动画切换。
                          key: ValueKey<String>('cross_$_count'),
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      const Text("记分牌式切换元素："),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          // var tween = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
                          return SlideTransitionX(
                              direction: AxisDirection.up,
                              position: animation,
                              child: child);
                        },
                        child: Text(
                          '$_count',
                          key: ValueKey<String>('pad_$_count'),
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      )
                    ],
                  ))),
        ));
  }
}
