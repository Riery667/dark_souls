import 'package:dark_souls/models/item.dart';

class Weapon extends Item {
  final int level;
  final String category;
  final String attackType;
  final int costMana;
  final double weight;
  final int durability;
  final String skill;
  final int damage;
  final int strengthRequired;
  final int dexterityRequired;
  final int inteligenceRequired;
  final int faithRequired;

  Weapon({
    required this.strengthRequired,
    required this.dexterityRequired,
    required this.inteligenceRequired,
    required this.faithRequired,
    required this.level,
    required this.category,
    required this.attackType,
    required this.costMana,
    required this.weight,
    required this.durability,
    required super.id,
    required super.name,
    required super.image,
    required super.description,
    required this.skill,
    required this.damage,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) {
    return Weapon(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      skill: json['skill'] ?? '',
      damage: json['damage'] ?? 0,
      category: json['category'] ?? '',
      costMana: json['costMana'] ?? 0,
      durability: json['durability'] ?? '',
      level: json['level'] ?? '',
      attackType: json['attackType'] ?? '',
      weight: json['weight'] ?? 0,
      strengthRequired: json['strengthRequired'] ?? 0,
      dexterityRequired: json['dexterityRequired'] ?? 0,
      inteligenceRequired: json['inteligenceRequired'] ?? 0,
      faithRequired: json['faithRequired'] ?? 0,
    );
  }
}
