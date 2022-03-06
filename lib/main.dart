import 'package:baker_soft/cubits/cart/cart_bloc.dart';
import 'package:baker_soft/cubits/products/products_cubit.dart';
import 'package:baker_soft/data/repositories/bakery_repository.dart';
import 'package:baker_soft/screens/products_list/products_list_screen.dart';
import 'package:baker_soft/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BakeryShop(bakeryApiRepository: BakeryApiRepository()));
}

class BakeryShop extends StatelessWidget {
  const BakeryShop({
    Key? key,
    required this.bakeryApiRepository,
  }) : super(key: key);

  final BakeryApiRepository bakeryApiRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (context) => ProductsCubit(bakeryApiRepository),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bakery Shop',
        theme: ThemeData(
          primarySwatch: MaterialColor(Styles.primaryColor, _swatchColors()),
          textTheme: const TextTheme(
            headline4: TextStyle(
              fontSize: 24.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              color: Color(Styles.black),
            ),
            headline5: TextStyle(
              fontSize: 18.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              color: Color(Styles.black),
            ),
            headline6: TextStyle(
              fontSize: 18.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              color: Color(Styles.black),
            ),
            bodyText1: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              color: Color(Styles.black),
            ),
            bodyText2: TextStyle(
              fontSize: 14.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              color: Color(Styles.black),
            ),
          ),
        ),
        home: const ProductListScreen(),
      ),
    );
  }

  Map<int, Color> _swatchColors() {
    return const {
      50: Color(0xfff5e7ea),
      100: Color(0xffe9c4c9),
      200: Color(0xffcb8d8e),
      300: Color(0xffb46465),
      400: Color(0xffb74545),
      500: Color(0xffb6352f),
      600: Color(0xffa82d2d),
      700: Color(0xff982628),
      800: Color(0xff8a2122),
      900: Color(0xff7a1c1a)
    };
  }
}
