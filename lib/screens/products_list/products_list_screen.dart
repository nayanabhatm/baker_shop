import 'package:baker_soft/cubits/products/products_cubit.dart';
import 'package:baker_soft/screens/products_list/widget/product_card.dart';
import 'package:baker_soft/shared_widgets/cart_icon_widget.dart';
import 'package:baker_soft/shared_widgets/failure_widget.dart';
import 'package:baker_soft/shared_widgets/loading_indicator.dart';
import 'package:baker_soft/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductsCubit>(context).getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Brotchen',
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: const [
          CartIconWidget(),
        ],
        backgroundColor: const Color(Styles.white),
      ),
      body: BlocConsumer<ProductsCubit, ProductsState>(
        listener: (BuildContext context, ProductsState state) {
          if (state is ProductsNetworkError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 4),
                content: Text(
                  state.message,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            );
          }
        },
        builder: (BuildContext context, ProductsState state) {
          if (state is ProductsLoadFailure) {
            return FailureWidget(message: state.message);
          } else if (state is ProductsLoadSuccess) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  product: state.products[index],
                );
              },
            );
          } else if (state is ProductsLoading) {
            return const LoadingIndicator();
          }
          return Center(
            child: Text(
              'Loading!',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
