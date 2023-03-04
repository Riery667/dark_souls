class InventoryItem {
  String id;
  String name;
  String image;
  String description;

  InventoryItem(
      {required this.id,
      required this.name,
      required this.image,
      required this.description});

  factory InventoryItem.fromJson(Map<String, dynamic> json) {
    return InventoryItem(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
        image: json['image'] ?? '',
        description: json['description'] ?? '');
  }
}
