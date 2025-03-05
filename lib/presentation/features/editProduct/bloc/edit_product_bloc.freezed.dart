// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditProductEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProductEvent()';
  }
}

/// @nodoc
class $EditProductEventCopyWith<$Res> {
  $EditProductEventCopyWith(
      EditProductEvent _, $Res Function(EditProductEvent) __);
}

/// @nodoc

class _Started implements EditProductEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProductEvent.started()';
  }
}

/// @nodoc

class _Submitted implements EditProductEvent {
  const _Submitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProductEvent.submittedTapped()';
  }
}

/// @nodoc

class _ProductDetailsUpdated implements EditProductEvent {
  const _ProductDetailsUpdated(
      final List<ProductDescriptionDetail> productDetails)
      : _productDetails = productDetails;

  final List<ProductDescriptionDetail> _productDetails;
  List<ProductDescriptionDetail> get productDetails {
    if (_productDetails is EqualUnmodifiableListView) return _productDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDetails);
  }

  /// Create a copy of EditProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDetailsUpdatedCopyWith<_ProductDetailsUpdated> get copyWith =>
      __$ProductDetailsUpdatedCopyWithImpl<_ProductDetailsUpdated>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailsUpdated &&
            const DeepCollectionEquality()
                .equals(other._productDetails, _productDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productDetails));

  @override
  String toString() {
    return 'EditProductEvent.updateProductDetails(productDetails: $productDetails)';
  }
}

/// @nodoc
abstract mixin class _$ProductDetailsUpdatedCopyWith<$Res>
    implements $EditProductEventCopyWith<$Res> {
  factory _$ProductDetailsUpdatedCopyWith(_ProductDetailsUpdated value,
          $Res Function(_ProductDetailsUpdated) _then) =
      __$ProductDetailsUpdatedCopyWithImpl;
  @useResult
  $Res call({List<ProductDescriptionDetail> productDetails});
}

/// @nodoc
class __$ProductDetailsUpdatedCopyWithImpl<$Res>
    implements _$ProductDetailsUpdatedCopyWith<$Res> {
  __$ProductDetailsUpdatedCopyWithImpl(this._self, this._then);

  final _ProductDetailsUpdated _self;
  final $Res Function(_ProductDetailsUpdated) _then;

  /// Create a copy of EditProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productDetails = null,
  }) {
    return _then(_ProductDetailsUpdated(
      null == productDetails
          ? _self._productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductDescriptionDetail>,
    ));
  }
}

/// @nodoc

class _SummaryUpdated implements EditProductEvent {
  const _SummaryUpdated(this.description);

  final String description;

  /// Create a copy of EditProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SummaryUpdatedCopyWith<_SummaryUpdated> get copyWith =>
      __$SummaryUpdatedCopyWithImpl<_SummaryUpdated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SummaryUpdated &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @override
  String toString() {
    return 'EditProductEvent.updateSummary(description: $description)';
  }
}

/// @nodoc
abstract mixin class _$SummaryUpdatedCopyWith<$Res>
    implements $EditProductEventCopyWith<$Res> {
  factory _$SummaryUpdatedCopyWith(
          _SummaryUpdated value, $Res Function(_SummaryUpdated) _then) =
      __$SummaryUpdatedCopyWithImpl;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$SummaryUpdatedCopyWithImpl<$Res>
    implements _$SummaryUpdatedCopyWith<$Res> {
  __$SummaryUpdatedCopyWithImpl(this._self, this._then);

  final _SummaryUpdated _self;
  final $Res Function(_SummaryUpdated) _then;

  /// Create a copy of EditProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = null,
  }) {
    return _then(_SummaryUpdated(
      null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$EditProductState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProductState()';
  }
}

/// @nodoc
class $EditProductStateCopyWith<$Res> {
  $EditProductStateCopyWith(
      EditProductState _, $Res Function(EditProductState) __);
}

/// @nodoc

class _Initial implements EditProductState {
  const _Initial(this.productInputFields);

  final EditProductInputFields productInputFields;

  /// Create a copy of EditProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.productInputFields, productInputFields) ||
                other.productInputFields == productInputFields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productInputFields);

  @override
  String toString() {
    return 'EditProductState.initial(productInputFields: $productInputFields)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $EditProductStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @useResult
  $Res call({EditProductInputFields productInputFields});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of EditProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productInputFields = null,
  }) {
    return _then(_Initial(
      null == productInputFields
          ? _self.productInputFields
          : productInputFields // ignore: cast_nullable_to_non_nullable
              as EditProductInputFields,
    ));
  }
}

/// @nodoc

class _Validate implements EditProductState {
  const _Validate(this.isValid);

  final bool isValid;

  /// Create a copy of EditProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidateCopyWith<_Validate> get copyWith =>
      __$ValidateCopyWithImpl<_Validate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Validate &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid);

  @override
  String toString() {
    return 'EditProductState.validate(isValid: $isValid)';
  }
}

/// @nodoc
abstract mixin class _$ValidateCopyWith<$Res>
    implements $EditProductStateCopyWith<$Res> {
  factory _$ValidateCopyWith(_Validate value, $Res Function(_Validate) _then) =
      __$ValidateCopyWithImpl;
  @useResult
  $Res call({bool isValid});
}

/// @nodoc
class __$ValidateCopyWithImpl<$Res> implements _$ValidateCopyWith<$Res> {
  __$ValidateCopyWithImpl(this._self, this._then);

  final _Validate _self;
  final $Res Function(_Validate) _then;

  /// Create a copy of EditProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isValid = null,
  }) {
    return _then(_Validate(
      null == isValid
          ? _self.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class Refresh implements EditProductState {
  const Refresh();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProductState.refresh()';
  }
}

/// @nodoc

class EditProductLoading implements EditProductState {
  const EditProductLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProductState.loading()';
  }
}

// dart format on
