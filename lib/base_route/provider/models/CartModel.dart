import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_demo_2023/base_route/provider/models/Item.dart';

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  double get totalPrice {
    double value = 0.0;
    for (var item in _items) {
      value += item.price * item.count;
    }
    return value;
  }

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }
}
