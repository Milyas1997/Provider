import 'package:flutter/material.dart';

class FavourateProvder extends ChangeNotifier {
  List<int> indexListItem = [];

  addValueToList(int value) {
    indexListItem.add(value);
    notifyListeners();
  }

  removeValueFromList(int value) {
    indexListItem.remove(value);
    notifyListeners();
  }
}
