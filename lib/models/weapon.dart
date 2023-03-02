import 'package:dark_souls/models/item.dart';

class Weapon extends Item {
  String skill;
  int attack;

  Weapon({
    required super.id,
    required super.name,
    required super.image,
    required super.description,
    required this.skill,
    required this.attack,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) {
    return Weapon(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      skill: json['skill'] ?? '',
      attack: json['attack'] ?? 0,
    );
  }
}
