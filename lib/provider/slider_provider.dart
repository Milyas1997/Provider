import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double value = 0;

  increment(double valu) {
    value = valu;
    notifyListeners();
  }
}
