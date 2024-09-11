class Character {
  late String title;
  late int id;
  late double price;
  late String description;
  late String image;
  late String category;

  Character.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    description = json['description'];
    image = json['image'];
    category = json['category'];
    price =
        (json['price'] as num).toDouble(); // Ensure price is always a double
  }
}
