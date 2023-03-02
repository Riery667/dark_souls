import 'package:dark_souls/models/item.dart';

class Speel extends Item {
  String effect;

  Speel(
      {required super.id,
      required super.name,
      required super.image,
      required super.description,
      required this.effect});

  factory Speel.fromJson(Map<String, dynamic> json) {
    return Speel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      effect: json['effect'] ?? '',
    );
  }
}
