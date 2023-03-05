import 'package:dark_souls/models/consumable.dart';
import 'package:dark_souls/models/shield.dart';
import 'package:dark_souls/models/spell.dart';
import 'package:dark_souls/models/weapon.dart';

class ItemData {
  final List<Consumable> consumables;
  final List<Weapon> weapons;
  final List<Shield> shields;
  final List<Spell> spells;

  ItemData(this.consumables, this.weapons, this.shields, this.spells);
}
