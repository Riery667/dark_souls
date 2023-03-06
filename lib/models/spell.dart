import 'package:dark_souls/models/item.dart';

class Spell extends Item {
  final double damage;
  final double buff;
  final String effect;
  final int manaCost;
  final int slotsUsed;
  final int inteligenceRequired;
  final int faithRequired;

  Spell(
      {required super.id,
      required super.name,
      required super.image,
      required super.description,
      required this.damage,
      required this.buff,
      required this.effect,
      required this.manaCost,
      required this.slotsUsed,
      required this.inteligenceRequired,
      required this.faithRequired});

  factory Spell.fromJson(Map<String, dynamic> json) {
    return Spell(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      damage: json['damage'] ?? 0,
      buff: json['buff'] ?? 0,
      effect: json['effect'] ?? '',
      manaCost: json['manaCost'] ?? 0,
      slotsUsed: json['slotsUsed'] ?? 0,
      inteligenceRequired: json['inteligenceRequired'] ?? 0,
      faithRequired: json['faithRequired'] ?? 0,
    );
  }
}
