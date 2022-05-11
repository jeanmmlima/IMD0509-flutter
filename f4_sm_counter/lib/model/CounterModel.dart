import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get getCount => _count;

  void add() {
    _count++;
    notifyListeners();
  }
}
