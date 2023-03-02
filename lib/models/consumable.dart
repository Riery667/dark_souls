import 'package:dark_souls/models/item.dart';
import 'package:flutter/material.dart';

class Consumable extends Item {
  final String effect;

  Consumable(
      {required super.id,
      required super.name,
      required super.description,
      required super.image,
      required this.effect});

  factory Consumable.fromJson(Map<String, dynamic> json) {
    return Consumable(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      description: json['description'] ?? '',
      effect: json['effect'] ?? '',
    );
  }
}
