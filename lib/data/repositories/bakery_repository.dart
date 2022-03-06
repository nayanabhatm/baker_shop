import 'package:baker_soft/data/models/product/product.dart';
import 'package:baker_soft/data/providers/bakery_api.dart';

class BakeryApiRepository {
  final BakeryApiClient _bakeryApiClient = BakeryApiClient();

  Future<dynamic> getBakeryProducts() async {
    try {
      Map<String, dynamic> response = await _bakeryApiClient.getBakeryData();
      final List<Product> products = response['products']
          .map<Product>((product) => Product.fromJson(product))
          .toList();
      return products;
    } catch (e) {
      throw e.toString();
    }
  }
}
