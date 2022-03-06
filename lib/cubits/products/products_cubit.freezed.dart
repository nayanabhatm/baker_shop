// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductsStateTearOff {
  const _$ProductsStateTearOff();

  ProductsInitial initial() {
    return const ProductsInitial();
  }

  ProductsLoading loading() {
    return const ProductsLoading();
  }

  ProductsLoadSuccess loadSuccess({required List<Product> products}) {
    return ProductsLoadSuccess(
      products: products,
    );
  }

  ProductsLoadFailure loadFailure({required String message}) {
    return ProductsLoadFailure(
      message: message,
    );
  }

  ProductsNetworkError networkError({required String message}) {
    return ProductsNetworkError(
      message: message,
    );
  }
}

/// @nodoc
const $ProductsState = _$ProductsStateTearOff();

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(String message) loadFailure,
    required TResult Function(String message) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
    required TResult Function(ProductsNetworkError value) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;
}

/// @nodoc
abstract class $ProductsInitialCopyWith<$Res> {
  factory $ProductsInitialCopyWith(
          ProductsInitial value, $Res Function(ProductsInitial) then) =
      _$ProductsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsInitialCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsInitialCopyWith<$Res> {
  _$ProductsInitialCopyWithImpl(
      ProductsInitial _value, $Res Function(ProductsInitial) _then)
      : super(_value, (v) => _then(v as ProductsInitial));

  @override
  ProductsInitial get _value => super._value as ProductsInitial;
}

/// @nodoc

class _$ProductsInitial implements ProductsInitial {
  const _$ProductsInitial();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(String message) loadFailure,
    required TResult Function(String message) networkError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
    required TResult Function(ProductsNetworkError value) networkError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductsInitial implements ProductsState {
  const factory ProductsInitial() = _$ProductsInitial;
}

/// @nodoc
abstract class $ProductsLoadingCopyWith<$Res> {
  factory $ProductsLoadingCopyWith(
          ProductsLoading value, $Res Function(ProductsLoading) then) =
      _$ProductsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsLoadingCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadingCopyWith<$Res> {
  _$ProductsLoadingCopyWithImpl(
      ProductsLoading _value, $Res Function(ProductsLoading) _then)
      : super(_value, (v) => _then(v as ProductsLoading));

  @override
  ProductsLoading get _value => super._value as ProductsLoading;
}

/// @nodoc

class _$ProductsLoading implements ProductsLoading {
  const _$ProductsLoading();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(String message) loadFailure,
    required TResult Function(String message) networkError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
    required TResult Function(ProductsNetworkError value) networkError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoading implements ProductsState {
  const factory ProductsLoading() = _$ProductsLoading;
}

/// @nodoc
abstract class $ProductsLoadSuccessCopyWith<$Res> {
  factory $ProductsLoadSuccessCopyWith(
          ProductsLoadSuccess value, $Res Function(ProductsLoadSuccess) then) =
      _$ProductsLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsLoadSuccessCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadSuccessCopyWith<$Res> {
  _$ProductsLoadSuccessCopyWithImpl(
      ProductsLoadSuccess _value, $Res Function(ProductsLoadSuccess) _then)
      : super(_value, (v) => _then(v as ProductsLoadSuccess));

  @override
  ProductsLoadSuccess get _value => super._value as ProductsLoadSuccess;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(ProductsLoadSuccess(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsLoadSuccess implements ProductsLoadSuccess {
  const _$ProductsLoadSuccess({required this.products});

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductsState.loadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsLoadSuccess &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  $ProductsLoadSuccessCopyWith<ProductsLoadSuccess> get copyWith =>
      _$ProductsLoadSuccessCopyWithImpl<ProductsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(String message) loadFailure,
    required TResult Function(String message) networkError,
  }) {
    return loadSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
  }) {
    return loadSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
    required TResult Function(ProductsNetworkError value) networkError,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadSuccess implements ProductsState {
  const factory ProductsLoadSuccess({required List<Product> products}) =
      _$ProductsLoadSuccess;

  List<Product> get products;
  @JsonKey(ignore: true)
  $ProductsLoadSuccessCopyWith<ProductsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsLoadFailureCopyWith<$Res> {
  factory $ProductsLoadFailureCopyWith(
          ProductsLoadFailure value, $Res Function(ProductsLoadFailure) then) =
      _$ProductsLoadFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ProductsLoadFailureCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadFailureCopyWith<$Res> {
  _$ProductsLoadFailureCopyWithImpl(
      ProductsLoadFailure _value, $Res Function(ProductsLoadFailure) _then)
      : super(_value, (v) => _then(v as ProductsLoadFailure));

  @override
  ProductsLoadFailure get _value => super._value as ProductsLoadFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ProductsLoadFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsLoadFailure implements ProductsLoadFailure {
  const _$ProductsLoadFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsLoadFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ProductsLoadFailureCopyWith<ProductsLoadFailure> get copyWith =>
      _$ProductsLoadFailureCopyWithImpl<ProductsLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(String message) loadFailure,
    required TResult Function(String message) networkError,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
  }) {
    return loadFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
    required TResult Function(ProductsNetworkError value) networkError,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadFailure implements ProductsState {
  const factory ProductsLoadFailure({required String message}) =
      _$ProductsLoadFailure;

  String get message;
  @JsonKey(ignore: true)
  $ProductsLoadFailureCopyWith<ProductsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsNetworkErrorCopyWith<$Res> {
  factory $ProductsNetworkErrorCopyWith(ProductsNetworkError value,
          $Res Function(ProductsNetworkError) then) =
      _$ProductsNetworkErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ProductsNetworkErrorCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsNetworkErrorCopyWith<$Res> {
  _$ProductsNetworkErrorCopyWithImpl(
      ProductsNetworkError _value, $Res Function(ProductsNetworkError) _then)
      : super(_value, (v) => _then(v as ProductsNetworkError));

  @override
  ProductsNetworkError get _value => super._value as ProductsNetworkError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ProductsNetworkError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsNetworkError implements ProductsNetworkError {
  const _$ProductsNetworkError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsState.networkError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsNetworkError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ProductsNetworkErrorCopyWith<ProductsNetworkError> get copyWith =>
      _$ProductsNetworkErrorCopyWithImpl<ProductsNetworkError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loadSuccess,
    required TResult Function(String message) loadFailure,
    required TResult Function(String message) networkError,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loadSuccess,
    TResult Function(String message)? loadFailure,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) initial,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsLoadSuccess value) loadSuccess,
    required TResult Function(ProductsLoadFailure value) loadFailure,
    required TResult Function(ProductsNetworkError value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? initial,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsLoadSuccess value)? loadSuccess,
    TResult Function(ProductsLoadFailure value)? loadFailure,
    TResult Function(ProductsNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class ProductsNetworkError implements ProductsState {
  const factory ProductsNetworkError({required String message}) =
      _$ProductsNetworkError;

  String get message;
  @JsonKey(ignore: true)
  $ProductsNetworkErrorCopyWith<ProductsNetworkError> get copyWith =>
      throw _privateConstructorUsedError;
}
