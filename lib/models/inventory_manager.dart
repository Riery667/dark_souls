import 'package:dark_souls/api/mock_items_service.dart';
import 'package:dark_souls/models/consumable.dart';
import 'package:dark_souls/models/shield.dart';
import 'package:dark_souls/models/speel.dart';
import 'package:dark_souls/models/weapon.dart';
import 'package:flutter/material.dart';

//Here, will pass all the data towards menu equipament
class InventoryManager extends ChangeNotifier {
  final List<Consumable> consumables = [];
  final List<Weapon> weapons = [];
  final List<Shield> shields = [];
  final List<Speel> speels = [];

  final mockService = MockhItemsService();
  bool isLoaded = false;
  int selectedTab = 0;
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

  InventoryManager() {
    _init();
  }

  void _init() async {
    final consumablesList = await mockService.getConsumable();
    final weaponsList = await mockService.getWeapon();
    final shieldsList = await mockService.getShield();
    final speelsList = await mockService.getSpeel();

    consumables.addAll(consumablesList);
    weapons.addAll(weaponsList);
    shields.addAll(shieldsList);
    speels.addAll(speelsList);
    isLoaded = true;
    notifyListeners();
  }

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }
}
