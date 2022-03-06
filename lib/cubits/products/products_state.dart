part of 'products_cubit.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = ProductsInitial;
  const factory ProductsState.loading() = ProductsLoading;
  const factory ProductsState.loadSuccess({
    required List<Product> products,
  }) = ProductsLoadSuccess;
  const factory ProductsState.loadFailure({
    required String message,
  }) = ProductsLoadFailure;
  const factory ProductsState.networkError({
    required String message,
  }) = ProductsNetworkError;
}
