import 'package:dark_souls/models/inventory_item.dart';

class Speel extends InventoryItem {
  double damage;

  Speel(
      {required super.id,
      required super.name,
      required super.image,
      required super.description,
      required this.damage});

  factory Speel.fromJson(Map<String, dynamic> json) {
    return Speel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      damage: json['damage'] ?? 0,
    );
  }
}
