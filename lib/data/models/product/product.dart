class Product {
  final int id;
  final String name;
  final String imageUrl;
  final double cost;

  const Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.cost,
  });

  Product copyWith({
    int? id,
    String? name,
    String? imageUrl,
    double? cost,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      cost: cost ?? this.cost,
    );
  }

  // @override
  // String toString() {
  //   return 'Product { complete: $complete, task: $task, note: $note, id: $id }';
  // }

  static Product fromJson(dynamic json) {
    return Product(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      cost: json['cost'] ?? 0.0,
    );
  }
}
