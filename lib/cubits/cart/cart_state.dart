part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    required BuiltList<CartItem> cartItems,
  }) = _CartState;

  factory CartState.initial() => CartState(cartItems: <CartItem>[].build());
}
