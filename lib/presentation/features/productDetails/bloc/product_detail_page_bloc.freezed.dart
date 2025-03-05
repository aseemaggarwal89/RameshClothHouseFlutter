// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailPageEvent {
  String get productId;

  /// Create a copy of ProductDetailPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDetailPageEventCopyWith<ProductDetailPageEvent> get copyWith =>
      _$ProductDetailPageEventCopyWithImpl<ProductDetailPageEvent>(
          this as ProductDetailPageEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDetailPageEvent &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @override
  String toString() {
    return 'ProductDetailPageEvent(productId: $productId)';
  }
}

/// @nodoc
abstract mixin class $ProductDetailPageEventCopyWith<$Res> {
  factory $ProductDetailPageEventCopyWith(ProductDetailPageEvent value,
          $Res Function(ProductDetailPageEvent) _then) =
      _$ProductDetailPageEventCopyWithImpl;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class _$ProductDetailPageEventCopyWithImpl<$Res>
    implements $ProductDetailPageEventCopyWith<$Res> {
  _$ProductDetailPageEventCopyWithImpl(this._self, this._then);

  final ProductDetailPageEvent _self;
  final $Res Function(ProductDetailPageEvent) _then;

  /// Create a copy of ProductDetailPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_self.copyWith(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetProductDetailEvent implements ProductDetailPageEvent {
  const GetProductDetailEvent(this.productId);

  @override
  final String productId;

  /// Create a copy of ProductDetailPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProductDetailEventCopyWith<GetProductDetailEvent> get copyWith =>
      _$GetProductDetailEventCopyWithImpl<GetProductDetailEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductDetailEvent &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @override
  String toString() {
    return 'ProductDetailPageEvent.getProductDetail(productId: $productId)';
  }
}

/// @nodoc
abstract mixin class $GetProductDetailEventCopyWith<$Res>
    implements $ProductDetailPageEventCopyWith<$Res> {
  factory $GetProductDetailEventCopyWith(GetProductDetailEvent value,
          $Res Function(GetProductDetailEvent) _then) =
      _$GetProductDetailEventCopyWithImpl;
  @override
  @useResult
  $Res call({String productId});
}

/// @nodoc
class _$GetProductDetailEventCopyWithImpl<$Res>
    implements $GetProductDetailEventCopyWith<$Res> {
  _$GetProductDetailEventCopyWithImpl(this._self, this._then);

  final GetProductDetailEvent _self;
  final $Res Function(GetProductDetailEvent) _then;

  /// Create a copy of ProductDetailPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productId = null,
  }) {
    return _then(GetProductDetailEvent(
      null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ProductDetailPageState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductDetailPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductDetailPageState()';
  }
}

/// @nodoc
class $ProductDetailPageStateCopyWith<$Res> {
  $ProductDetailPageStateCopyWith(
      ProductDetailPageState _, $Res Function(ProductDetailPageState) __);
}

/// @nodoc

class Initial implements ProductDetailPageState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductDetailPageState.initial()';
  }
}

/// @nodoc

class Loaded implements ProductDetailPageState {
  const Loaded(this.product);

  final ProductDetailDTO product;

  /// Create a copy of ProductDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @override
  String toString() {
    return 'ProductDetailPageState.loaded(product: $product)';
  }
}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res>
    implements $ProductDetailPageStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) =
      _$LoadedCopyWithImpl;
  @useResult
  $Res call({ProductDetailDTO product});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

  /// Create a copy of ProductDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? product = null,
  }) {
    return _then(Loaded(
      null == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailDTO,
    ));
  }
}

/// @nodoc

class Loading implements ProductDetailPageState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductDetailPageState.loading()';
  }
}

/// @nodoc

class LoadedError implements ProductDetailPageState {
  const LoadedError(this.error, this.errorMessage);

  final dynamic error;
  final String errorMessage;

  /// Create a copy of ProductDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedErrorCopyWith<LoadedError> get copyWith =>
      _$LoadedErrorCopyWithImpl<LoadedError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), errorMessage);

  @override
  String toString() {
    return 'ProductDetailPageState.error(error: $error, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LoadedErrorCopyWith<$Res>
    implements $ProductDetailPageStateCopyWith<$Res> {
  factory $LoadedErrorCopyWith(
          LoadedError value, $Res Function(LoadedError) _then) =
      _$LoadedErrorCopyWithImpl;
  @useResult
  $Res call({dynamic error, String errorMessage});
}

/// @nodoc
class _$LoadedErrorCopyWithImpl<$Res> implements $LoadedErrorCopyWith<$Res> {
  _$LoadedErrorCopyWithImpl(this._self, this._then);

  final LoadedError _self;
  final $Res Function(LoadedError) _then;

  /// Create a copy of ProductDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
    Object? errorMessage = null,
  }) {
    return _then(LoadedError(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
