// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailPageEvent {
  String get productId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId)? getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? getProductDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductDetailEvent value) getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProductDetailEvent value)? getProductDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductDetailEvent value)? getProductDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailPageEventCopyWith<ProductDetailPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailPageEventCopyWith<$Res> {
  factory $ProductDetailPageEventCopyWith(ProductDetailPageEvent value,
          $Res Function(ProductDetailPageEvent) then) =
      _$ProductDetailPageEventCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$ProductDetailPageEventCopyWithImpl<$Res>
    implements $ProductDetailPageEventCopyWith<$Res> {
  _$ProductDetailPageEventCopyWithImpl(this._value, this._then);

  final ProductDetailPageEvent _value;
  // ignore: unused_field
  final $Res Function(ProductDetailPageEvent) _then;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetProductDetailEventCopyWith<$Res>
    implements $ProductDetailPageEventCopyWith<$Res> {
  factory _$$GetProductDetailEventCopyWith(_$GetProductDetailEvent value,
          $Res Function(_$GetProductDetailEvent) then) =
      __$$GetProductDetailEventCopyWithImpl<$Res>;
  @override
  $Res call({String productId});
}

/// @nodoc
class __$$GetProductDetailEventCopyWithImpl<$Res>
    extends _$ProductDetailPageEventCopyWithImpl<$Res>
    implements _$$GetProductDetailEventCopyWith<$Res> {
  __$$GetProductDetailEventCopyWithImpl(_$GetProductDetailEvent _value,
      $Res Function(_$GetProductDetailEvent) _then)
      : super(_value, (v) => _then(v as _$GetProductDetailEvent));

  @override
  _$GetProductDetailEvent get _value => super._value as _$GetProductDetailEvent;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$GetProductDetailEvent(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductDetailEvent implements GetProductDetailEvent {
  const _$GetProductDetailEvent(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'ProductDetailPageEvent.getProductDetail(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductDetailEvent &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$$GetProductDetailEventCopyWith<_$GetProductDetailEvent> get copyWith =>
      __$$GetProductDetailEventCopyWithImpl<_$GetProductDetailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) getProductDetail,
  }) {
    return getProductDetail(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId)? getProductDetail,
  }) {
    return getProductDetail?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? getProductDetail,
    required TResult orElse(),
  }) {
    if (getProductDetail != null) {
      return getProductDetail(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductDetailEvent value) getProductDetail,
  }) {
    return getProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProductDetailEvent value)? getProductDetail,
  }) {
    return getProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductDetailEvent value)? getProductDetail,
    required TResult orElse(),
  }) {
    if (getProductDetail != null) {
      return getProductDetail(this);
    }
    return orElse();
  }
}

abstract class GetProductDetailEvent implements ProductDetailPageEvent {
  const factory GetProductDetailEvent(final String productId) =
      _$GetProductDetailEvent;

  @override
  String get productId;
  @override
  @JsonKey(ignore: true)
  _$$GetProductDetailEventCopyWith<_$GetProductDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailDTO product) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailPageStateCopyWith<$Res> {
  factory $ProductDetailPageStateCopyWith(ProductDetailPageState value,
          $Res Function(ProductDetailPageState) then) =
      _$ProductDetailPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDetailPageStateCopyWithImpl<$Res>
    implements $ProductDetailPageStateCopyWith<$Res> {
  _$ProductDetailPageStateCopyWithImpl(this._value, this._then);

  final ProductDetailPageState _value;
  // ignore: unused_field
  final $Res Function(ProductDetailPageState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ProductDetailPageStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ProductDetailPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailDTO product) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductDetailPageState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({ProductDetailDTO product});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$ProductDetailPageStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$Loaded(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailDTO,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.product);

  @override
  final ProductDetailDTO product;

  @override
  String toString() {
    return 'ProductDetailPageState.loaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailDTO product) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return loaded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return loaded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ProductDetailPageState {
  const factory Loaded(final ProductDetailDTO product) = _$Loaded;

  ProductDetailDTO get product;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ProductDetailPageStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ProductDetailPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailDTO product) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProductDetailPageState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedErrorCopyWith<$Res> {
  factory _$$LoadedErrorCopyWith(
          _$LoadedError value, $Res Function(_$LoadedError) then) =
      __$$LoadedErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, String errorMessage});
}

/// @nodoc
class __$$LoadedErrorCopyWithImpl<$Res>
    extends _$ProductDetailPageStateCopyWithImpl<$Res>
    implements _$$LoadedErrorCopyWith<$Res> {
  __$$LoadedErrorCopyWithImpl(
      _$LoadedError _value, $Res Function(_$LoadedError) _then)
      : super(_value, (v) => _then(v as _$LoadedError));

  @override
  _$LoadedError get _value => super._value as _$LoadedError;

  @override
  $Res call({
    Object? error = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LoadedError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedError implements LoadedError {
  const _$LoadedError(this.error, this.errorMessage);

  @override
  final dynamic error;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProductDetailPageState.error(error: $error, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$LoadedErrorCopyWith<_$LoadedError> get copyWith =>
      __$$LoadedErrorCopyWithImpl<_$LoadedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailDTO product) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return error(this.error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return error?.call(this.error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailDTO product)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadedError implements ProductDetailPageState {
  const factory LoadedError(final dynamic error, final String errorMessage) =
      _$LoadedError;

  dynamic get error;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$LoadedErrorCopyWith<_$LoadedError> get copyWith =>
      throw _privateConstructorUsedError;
}
