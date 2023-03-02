class Weapon {
  String id;
  String name;
  String image;
  String description;
  String skill;
  int attack;

  Weapon({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
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
