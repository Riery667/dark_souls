class Item {
  String id;
  String name;
  String image;
  String description;

  Item(
      {required this.id,
      required this.name,
      required this.image,
      required this.description});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
        image: json['image'] ?? '',
        description: json['description'] ?? '');
  }
}
