import 'package:baker_soft/cubits/cart/cart_bloc.dart';
import 'package:baker_soft/data/models/product/product.dart';
import 'package:baker_soft/shared_widgets/cart_icon_widget.dart';
import 'package:baker_soft/shared_widgets/product_image_widget.dart';
import 'package:baker_soft/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.name,
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: const [
          CartIconWidget(),
        ],
        backgroundColor: const Color(Styles.white),
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: const Color(Styles.black),
            ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ProductImageWidget(
              imageUrl: product.imageUrl,
              borderRadius: 0.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Styles.padding10),
            child: Text(
              product.name,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: Styles.padding10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(Styles.padding10),
                  child: Text(
                    ' €${product.cost.toString()}',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(Styles.padding10),
            child: Text(
              ' Yummy!!',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Theme.of(context).primaryColorDark,
                  ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Theme.of(context).primaryColor,
                child: TextButton(
                  onPressed: () {
                    context
                        .read<CartBloc>()
                        .add(ProductAdded(product: product));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 3),
                        content: Text(
                          'Item added to the Cart',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: const Color(Styles.white),
                                  ),
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(Styles.padding10),
                    child: Text(
                      'Add to cart',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: const Color(Styles.white),
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
