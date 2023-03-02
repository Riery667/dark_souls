import 'package:dark_souls/models/item.dart';

class Shield extends Item {
  String skill;
  int defense;

  Shield(
      {required super.id,
      required super.name,
      required super.image,
      required super.description,
      required this.skill,
      required this.defense});

  factory Shield.fromJson(Map<String, dynamic> json) {
    return Shield(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      skill: json['skill'] ?? '',
      defense: json['defense'] ?? 0,
    );
  }
}
