import 'package:baker_soft/data/models/product/product.dart';
import 'package:baker_soft/screens/product_details/products_details_screen.dart';
import 'package:baker_soft/shared_widgets/product_image_widget.dart';
import 'package:baker_soft/utils/styles.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailsScreen(
                product: product,
              );
            },
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(Styles.padding10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Styles.radius15),
        ),
        elevation: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: ProductImageWidget(imageUrl: product.imageUrl)),
            Padding(
              padding: const EdgeInsets.all(Styles.padding5),
              child: Text(
                product.name,
                style: themeData.textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Styles.padding5),
              child: Text(
                '€${product.cost.toString()}',
                style: themeData.textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
