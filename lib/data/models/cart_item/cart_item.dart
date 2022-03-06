import 'package:baker_soft/data/models/product/product.dart';

class CartItem {
  final int count;
  final Product product;

  const CartItem({
    required this.count,
    required this.product,
  });

  CartItem copyWith({
    int? count,
    Product? product,
  }) {
    return CartItem(
      count: count ?? this.count,
      product: product ?? this.product,
    );
  }

  static CartItem fromJson(dynamic json) {
    return CartItem(
      count: json['count'] ?? 0,
      product: json['product'] ??
          Product.fromJson(json['product'] as Map<String, dynamic>),
    );
  }
}
