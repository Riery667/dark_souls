import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:dark_souls/models/models.dart';

//creater a a number of lists
class MockhItemsService {
  //create a list of Consumables from Json
  Future<List<Consumable>> getConsumable() async {
    await Future.delayed(const Duration(milliseconds: 0));
    final dataString =
        await _loadAsset('assets/sample_data/sample_consumable.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['consumable'] != null) {
      final items = <Consumable>[];
      try {
        json['consumable'].forEach((v) {
          items.add(Consumable.fromJson(v));
        });
      } catch (e) {
        debugPrint('Consumable Error to convertion from Json');
      }
      return items;
    } else {
      return [];
    }
  }

  //create a list of Weapon from Json
  Future<List<Weapon>> getWeapon() async {
    await Future.delayed(const Duration(milliseconds: 0));
    final dataString =
        await _loadAsset('assets/sample_data/sample_weapon.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['weapon'] != null) {
      final items = <Weapon>[];
      try {
        json['weapon'].forEach((v) {
          items.add(Weapon.fromJson(v));
        });
      } catch (e) {
        debugPrint('Weapon Error to convertion from Json');
      }
      return items;
    } else {
      return [];
    }
  }

  //create a list of Shield from Json
  Future<List<Shield>> getShield() async {
    await Future.delayed(const Duration(milliseconds: 0));
    final dataString =
        await _loadAsset('assets/sample_data/sample_shield.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['shield'] != null) {
      final items = <Shield>[];
      try {
        json['shield'].forEach((v) {
          items.add(Shield.fromJson(v));
        });
      } catch (e) {
        debugPrint('Shield Error to convertion from Json');
      }
      return items;
    } else {
      return [];
    }
  }

  //create a list of Speel from Json
  Future<List<Speel>> getSpeel() async {
    await Future.delayed(const Duration(milliseconds: 0));
    final dataString = await _loadAsset('assets/sample_data/sample_speel.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['speel'] != null) {
      final items = <Speel>[];
      try {
        json['speel'].forEach((v) {
          items.add(Speel.fromJson(v));
        });
      } catch (e) {
        debugPrint('Speel Error to convertion from Json');
      }
      return items;
    } else {
      return [];
    }
  }
}

Future<String> _loadAsset(String path) async {
  return rootBundle.loadString(path);
}
