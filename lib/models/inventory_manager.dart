import 'package:dark_souls/api/mock_items_service.dart';
import 'package:dark_souls/models/models.dart';
import 'package:flutter/material.dart';

//Here, will pass all the data towards menu equipament
class InventoryManager extends ChangeNotifier {
  bool isLoaded = false;
  int selectedTab = 0;
  dynamic selectedItem;

  final List<Consumable> consumables = [];
  final List<Weapon> weapons = [];
  final List<Shield> shields = [];
  final List<Spell> spells = [];
  final mockService = MockhItemsService();
  List<String> categoryImage = [
    "assets/items/category/consumable.png",
    "assets/items/category/weapons.png",
    "assets/items/category/shield.png",
    "assets/items/category/spell.png"
  ];

  InventoryManager() {
    _init();
  }

  void _init() async {
    final consumablesList = await mockService.getConsumable();
    final weaponsList = await mockService.getWeapon();
    final shieldsList = await mockService.getShield();
    final spellsList = await mockService.getSpell();

    consumables.addAll(consumablesList);
    weapons.addAll(weaponsList);
    shields.addAll(shieldsList);
    spells.addAll(spellsList);
    isLoaded = true;
    notifyListeners();
  }

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }

  void showConsumable(Consumable item) {
    selectedItem = item;
    notifyListeners();
  }

  void showWeapon(Weapon item) {
    selectedItem = item;
    notifyListeners();
  }

  void showShield(Shield item) {
    selectedItem = item;
    notifyListeners();
  }

  void showSpell(Spell item) {
    selectedItem = item;
    notifyListeners();
  }
}
