import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Order with ChangeNotifier {
  late List<Menu> orders;

  void addOrder(Menu menu) {
    if (!isExisted(menu.name)) {
      orders.add(menu);
    }
  }

  bool isExisted(String name) {
    for (var i in orders) {
      if (i.name == name) {
        i.amout++;
        notifyListeners();
      }
    }
    return false;
  }

  List<Menu> get order => orders;
}
