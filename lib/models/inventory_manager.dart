import 'package:flutter/material.dart';

//Here, will pass all the data towards menu equipament
class InventoryManager extends ChangeNotifier {
  List<Color> category = [
    Colors.black,
    Colors.white,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.yellow
  ];

  int selectedTab = 0;

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }
}

enum Category { consumables, weapons, armors, rings, keyItems, souls }
