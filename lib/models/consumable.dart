import 'package:flutter/material.dart';

class Consumable {
  String id;
  String name;
  String image;
  String description;

  Consumable(
      {required this.id,
      required this.name,
      required this.image,
      required this.description});

  factory Consumable.fromJson(Map<String, dynamic> json) {
    return Consumable(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
        image: json['image'] ?? '',
        description: json['description'] ?? '');
  }
}
