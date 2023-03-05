import 'package:dark_souls/models/item.dart';

class Weapon extends Item {
  final String level;
  final String category;
  final String typeDamage;
  final String costMana;
  final String weight;
  final String durability;
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
    required this.typeDamage,
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
      costMana: json['costMana'] ?? '',
      durability: json['durability'] ?? '',
      level: json['level'] ?? '',
      typeDamage: json['typeDamage'] ?? '',
      weight: json['weight'] ?? '',
      strengthRequired: json['strengthRequired'] ?? '',
      dexterityRequired: json['dexterityRequired'] ?? '',
      inteligenceRequired: json['inteligenceRequired'] ?? '',
      faithRequired: json['faithRequired'] ?? '',
    );
  }
}
