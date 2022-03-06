import 'package:baker_soft/data/models/cart_item/cart_item.dart';
import 'package:baker_soft/data/models/product/product.dart';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial());
  // {
  //   on<ProductAdded>((added, emit) => _mapAddedToState);
  //   on<CartItemRemoved>((removed, emit) => _mapRemovedToState);
  //   on<CartItemCountIncreased>(
  //       (countIncreased, emit) => _mapCountIncreasedToState);
  //   on<CartItemCountDecreased>(
  //       (countDecreased, emit) => _mapCountDecreasedToState);
  // }

  @override
  Stream<CartState> mapEventToState(CartEvent event) => event.map(
        added: _mapAddedToState,
        removed: _mapRemovedToState,
        countIncreased: _mapCountIncreasedToState,
        countDecreased: _mapCountDecreasedToState,
      );

  Stream<CartState> _mapAddedToState(
    ProductAdded event,
  ) async* {
    final cartItem = CartItem(count: 1, product: event.product);
    final cartItemIndex = state.cartItems.indexWhere(
      (item) => item.product == cartItem.product,
    );

    if (cartItemIndex >= 0) {
      yield* _increaseCartItemCount(cartItem, cartItemIndex);
    } else {
      final items = state.cartItems.rebuild((builder) => builder.add(cartItem));

      yield state.copyWith(cartItems: items);
    }
  }

  Stream<CartState> _mapRemovedToState(
    CartItemRemoved event,
  ) async* {
    final cartItem = event.item;

    yield* _removeCartItem(cartItem);
  }

  Stream<CartState> _mapCountIncreasedToState(
    CartItemCountIncreased event,
  ) async* {
    final cartItem = event.item;
    final cartItemIndex = state.cartItems.indexOf(cartItem);

    if (cartItemIndex >= 0) {
      yield* _increaseCartItemCount(cartItem, cartItemIndex);
    }
  }

  Stream<CartState> _mapCountDecreasedToState(
    CartItemCountDecreased event,
  ) async* {
    final cartItem = event.item;

    if (cartItem.count > 1) {
      final cartItemIndex = state.cartItems.indexOf(cartItem);

      if (cartItemIndex >= 0) {
        yield* _decreaseCartItemCount(cartItem, cartItemIndex);
      }
    } else {
      yield* _removeCartItem(cartItem);
    }
  }

  Stream<CartState> _increaseCartItemCount(
    CartItem item,
    int index,
  ) async* {
    yield* _changeCartItemCount(item, index, 1);
  }

  Stream<CartState> _decreaseCartItemCount(
    CartItem item,
    int index,
  ) async* {
    yield* _changeCartItemCount(item, index, -1);
  }

  Stream<CartState> _changeCartItemCount(
    CartItem item,
    int index,
    int value,
  ) async* {
    final items = state.cartItems.rebuild(
      (builder) => builder[index] = item.copyWith(count: item.count + value),
    );

    yield state.copyWith(cartItems: items);
  }

  Stream<CartState> _removeCartItem(CartItem item) async* {
    final items = state.cartItems.rebuild((builder) => builder.remove(item));

    yield state.copyWith(cartItems: items);
  }

  CartState fromJson(Map<String, dynamic> json) {
    final cartItemsJsonList = json['items'] as List;
    final cartItems =
        cartItemsJsonList.map((item) => CartItem.fromJson(item)).toList();

    return CartState(cartItems: cartItems.build());
  }
}
