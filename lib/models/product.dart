class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  // Convert JSON into Product object
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      name: json['title'] ?? json['name'] ?? '',
      price: (json['price'] as num).toDouble(),
      description: json['description'] ?? '',
      imageUrl: json['thumbnail'] ?? json['image'] ?? '',
    );
  }

  // Convert Product object into JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': name,
      'price': price,
      'description': description,
      'thumbnail': imageUrl,
    };
  }
}