import 'package:flutter/material.dart';

class FavProvider extends ChangeNotifier {
  List<int> tappedlist = [];

  addTappedList(int index) {
    tappedlist.add(index);
    notifyListeners();
  }

  int get Listlength => tappedlist.length;

  removeTappedList(int index) {
    tappedlist.remove(index);
    notifyListeners();
  }
}
