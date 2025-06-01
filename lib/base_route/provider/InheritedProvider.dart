import 'package:flutter/material.dart';

class InheritedProvider<T> extends InheritedWidget {
  final T data;

  const InheritedProvider(
      {super.key, required this.data, required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
