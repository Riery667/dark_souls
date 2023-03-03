import 'package:flutter/material.dart';

//Here, will pass all the data towards menu equipament
class InventoryManager extends ChangeNotifier {
  List<String> categoryImage = [
    "assets/items/category/consumable.png",
    "assets/items/category/weapons.png",
    "assets/items/category/shield.png",
    "assets/items/category/speel.png"
  ];

  List<Color> category = [
    Colors.black,
    Colors.white,
  ];

  int selectedTab = 0;

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }
}
