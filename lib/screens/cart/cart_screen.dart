import 'package:baker_soft/cubits/cart/cart_bloc.dart';
import 'package:baker_soft/data/models/cart_item/cart_item.dart';
import 'package:baker_soft/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CartBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Items'),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final List<CartItem> cartItems = state.cartItems.toList();
          return cartItems.isNotEmpty
              ? ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: Styles.padding5),
                      child: Card(
                        elevation: 6,
                        margin: const EdgeInsets.all(Styles.padding10),
                        child: ListTile(
                          title: Text(
                            cartItems[index].product.name,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(Styles.padding5),
                                child: Text(
                                  '€${cartItems[index].product.cost.toString()}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                        color: const Color(
                                          Styles.grey,
                                        ),
                                      ),
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const FaIcon(
                                      FontAwesomeIcons.minus,
                                      size: Styles.fontSize15,
                                    ),
                                    onPressed: () => bloc.add(
                                        CartItemCountDecreased(
                                            item: cartItems[index])),
                                  ),
                                  Text(
                                    '${cartItems[index].count}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                          color:
                                              const Color(Styles.primaryColor),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  IconButton(
                                    icon: const FaIcon(
                                      FontAwesomeIcons.plus,
                                      size: Styles.fontSize15,
                                    ),
                                    onPressed: () => bloc.add(
                                        CartItemCountIncreased(
                                            item: cartItems[index])),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.trash,
                              size: Styles.fontSize20,
                              color: Color(Styles.black),
                            ),
                            onPressed: () => bloc
                                .add(CartItemRemoved(item: cartItems[index])),
                          ),
                        ),
                      ),
                    );
                  },
                )
              : Card(
                  child: Center(
                    child: Text(
                      'Your cart is empty :(',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
