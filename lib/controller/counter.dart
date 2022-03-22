import 'package:flutter/material.dart';

class CounterApp extends ChangeNotifier {
  int count = 0;

  Increment() {
    count = count + 1;
    notifyListeners();
  }

  Decrement() {
    count = count - 1;
    notifyListeners();
  }
}
