import 'package:baker_soft/cubits/cart/cart_bloc.dart';
import 'package:baker_soft/screens/cart/cart_screen.dart';
import 'package:baker_soft/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const CartScreen();
            },
          ),
        );
      },
      icon: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 20.0,
              top: 10.0,
              bottom: 10.0,
            ),
            child: const FaIcon(
              FontAwesomeIcons.shoppingCart,
              size: Styles.fontSize20,
              color: Color(Styles.black),
            ),
          ),
          Positioned(
            left: 12,
            bottom: 20,
            child: CircleAvatar(
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return Text('${state.cartItems.length}');
                },
              ),
              radius: 10,
            ),
          ),
        ],
      ),
    );
  }
}
