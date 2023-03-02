import 'package:dark_souls/models/consumable.dart';
import 'package:dark_souls/models/shield.dart';
import 'package:dark_souls/models/speel.dart';
import 'package:dark_souls/models/weapon.dart';

class ItemData {
  final List<Consumable> consumables;
  final List<Weapon> weapons;
  final List<Shield> shields;
  final List<Speel> speels;

  ItemData(this.consumables, this.weapons, this.shields, this.speels);
}
