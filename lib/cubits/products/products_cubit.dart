import 'package:baker_soft/data/models/product/product.dart';
import 'package:baker_soft/data/repositories/bakery_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_cubit.freezed.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this._bakeryApiRepository)
      : super(const ProductsState.initial());

  final BakeryApiRepository _bakeryApiRepository;

  Future<void> getProducts() async {
    try {
      emit(const ProductsState.loading());
      List<Product> products = await _bakeryApiRepository.getBakeryProducts();
      emit(ProductsState.loadSuccess(products: products));
    } catch (e) {
      emit(ProductsState.loadFailure(message: e.toString()));
    }
  }
}
