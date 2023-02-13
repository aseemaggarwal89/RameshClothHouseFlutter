// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submittedTapped,
    required TResult Function(List<ProductDescriptionDetail> productDetails)
        updateProductDetails,
    required TResult Function(String description) updateSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submittedTapped,
    required TResult Function(_ProductDetailsUpdated value)
        updateProductDetails,
    required TResult Function(_SummaryUpdated value) updateSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProductEventCopyWith<$Res> {
  factory $EditProductEventCopyWith(
          EditProductEvent value, $Res Function(EditProductEvent) then) =
      _$EditProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProductEventCopyWithImpl<$Res>
    implements $EditProductEventCopyWith<$Res> {
  _$EditProductEventCopyWithImpl(this._value, this._then);

  final EditProductEvent _value;
  // ignore: unused_field
  final $Res Function(EditProductEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$EditProductEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'EditProductEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submittedTapped,
    required TResult Function(List<ProductDescriptionDetail> productDetails)
        updateProductDetails,
    required TResult Function(String description) updateSummary,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submittedTapped,
    required TResult Function(_ProductDetailsUpdated value)
        updateProductDetails,
    required TResult Function(_SummaryUpdated value) updateSummary,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EditProductEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$EditProductEventCopyWithImpl<$Res>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, (v) => _then(v as _$_Submitted));

  @override
  _$_Submitted get _value => super._value as _$_Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'EditProductEvent.submittedTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submittedTapped,
    required TResult Function(List<ProductDescriptionDetail> productDetails)
        updateProductDetails,
    required TResult Function(String description) updateSummary,
  }) {
    return submittedTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
  }) {
    return submittedTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
    required TResult orElse(),
  }) {
    if (submittedTapped != null) {
      return submittedTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submittedTapped,
    required TResult Function(_ProductDetailsUpdated value)
        updateProductDetails,
    required TResult Function(_SummaryUpdated value) updateSummary,
  }) {
    return submittedTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
  }) {
    return submittedTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
    required TResult orElse(),
  }) {
    if (submittedTapped != null) {
      return submittedTapped(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements EditProductEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
abstract class _$$_ProductDetailsUpdatedCopyWith<$Res> {
  factory _$$_ProductDetailsUpdatedCopyWith(_$_ProductDetailsUpdated value,
          $Res Function(_$_ProductDetailsUpdated) then) =
      __$$_ProductDetailsUpdatedCopyWithImpl<$Res>;
  $Res call({List<ProductDescriptionDetail> productDetails});
}

/// @nodoc
class __$$_ProductDetailsUpdatedCopyWithImpl<$Res>
    extends _$EditProductEventCopyWithImpl<$Res>
    implements _$$_ProductDetailsUpdatedCopyWith<$Res> {
  __$$_ProductDetailsUpdatedCopyWithImpl(_$_ProductDetailsUpdated _value,
      $Res Function(_$_ProductDetailsUpdated) _then)
      : super(_value, (v) => _then(v as _$_ProductDetailsUpdated));

  @override
  _$_ProductDetailsUpdated get _value =>
      super._value as _$_ProductDetailsUpdated;

  @override
  $Res call({
    Object? productDetails = freezed,
  }) {
    return _then(_$_ProductDetailsUpdated(
      productDetails == freezed
          ? _value._productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductDescriptionDetail>,
    ));
  }
}

/// @nodoc

class _$_ProductDetailsUpdated implements _ProductDetailsUpdated {
  const _$_ProductDetailsUpdated(
      final List<ProductDescriptionDetail> productDetails)
      : _productDetails = productDetails;

  final List<ProductDescriptionDetail> _productDetails;
  @override
  List<ProductDescriptionDetail> get productDetails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDetails);
  }

  @override
  String toString() {
    return 'EditProductEvent.updateProductDetails(productDetails: $productDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsUpdated &&
            const DeepCollectionEquality()
                .equals(other._productDetails, _productDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productDetails));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDetailsUpdatedCopyWith<_$_ProductDetailsUpdated> get copyWith =>
      __$$_ProductDetailsUpdatedCopyWithImpl<_$_ProductDetailsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submittedTapped,
    required TResult Function(List<ProductDescriptionDetail> productDetails)
        updateProductDetails,
    required TResult Function(String description) updateSummary,
  }) {
    return updateProductDetails(productDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
  }) {
    return updateProductDetails?.call(productDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
    required TResult orElse(),
  }) {
    if (updateProductDetails != null) {
      return updateProductDetails(productDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submittedTapped,
    required TResult Function(_ProductDetailsUpdated value)
        updateProductDetails,
    required TResult Function(_SummaryUpdated value) updateSummary,
  }) {
    return updateProductDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
  }) {
    return updateProductDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
    required TResult orElse(),
  }) {
    if (updateProductDetails != null) {
      return updateProductDetails(this);
    }
    return orElse();
  }
}

abstract class _ProductDetailsUpdated implements EditProductEvent {
  const factory _ProductDetailsUpdated(
          final List<ProductDescriptionDetail> productDetails) =
      _$_ProductDetailsUpdated;

  List<ProductDescriptionDetail> get productDetails;
  @JsonKey(ignore: true)
  _$$_ProductDetailsUpdatedCopyWith<_$_ProductDetailsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SummaryUpdatedCopyWith<$Res> {
  factory _$$_SummaryUpdatedCopyWith(
          _$_SummaryUpdated value, $Res Function(_$_SummaryUpdated) then) =
      __$$_SummaryUpdatedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$_SummaryUpdatedCopyWithImpl<$Res>
    extends _$EditProductEventCopyWithImpl<$Res>
    implements _$$_SummaryUpdatedCopyWith<$Res> {
  __$$_SummaryUpdatedCopyWithImpl(
      _$_SummaryUpdated _value, $Res Function(_$_SummaryUpdated) _then)
      : super(_value, (v) => _then(v as _$_SummaryUpdated));

  @override
  _$_SummaryUpdated get _value => super._value as _$_SummaryUpdated;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$_SummaryUpdated(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SummaryUpdated implements _SummaryUpdated {
  const _$_SummaryUpdated(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'EditProductEvent.updateSummary(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryUpdated &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_SummaryUpdatedCopyWith<_$_SummaryUpdated> get copyWith =>
      __$$_SummaryUpdatedCopyWithImpl<_$_SummaryUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submittedTapped,
    required TResult Function(List<ProductDescriptionDetail> productDetails)
        updateProductDetails,
    required TResult Function(String description) updateSummary,
  }) {
    return updateSummary(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
  }) {
    return updateSummary?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submittedTapped,
    TResult Function(List<ProductDescriptionDetail> productDetails)?
        updateProductDetails,
    TResult Function(String description)? updateSummary,
    required TResult orElse(),
  }) {
    if (updateSummary != null) {
      return updateSummary(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submittedTapped,
    required TResult Function(_ProductDetailsUpdated value)
        updateProductDetails,
    required TResult Function(_SummaryUpdated value) updateSummary,
  }) {
    return updateSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
  }) {
    return updateSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submittedTapped,
    TResult Function(_ProductDetailsUpdated value)? updateProductDetails,
    TResult Function(_SummaryUpdated value)? updateSummary,
    required TResult orElse(),
  }) {
    if (updateSummary != null) {
      return updateSummary(this);
    }
    return orElse();
  }
}

abstract class _SummaryUpdated implements EditProductEvent {
  const factory _SummaryUpdated(final String description) = _$_SummaryUpdated;

  String get description;
  @JsonKey(ignore: true)
  _$$_SummaryUpdatedCopyWith<_$_SummaryUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProductInputFields productInputFields)
        initial,
    required TResult Function(bool isValid) validate,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validate value) validate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(EditProductLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProductStateCopyWith<$Res> {
  factory $EditProductStateCopyWith(
          EditProductState value, $Res Function(EditProductState) then) =
      _$EditProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProductStateCopyWithImpl<$Res>
    implements $EditProductStateCopyWith<$Res> {
  _$EditProductStateCopyWithImpl(this._value, this._then);

  final EditProductState _value;
  // ignore: unused_field
  final $Res Function(EditProductState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  $Res call({EditProductInputFields productInputFields});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EditProductStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? productInputFields = freezed,
  }) {
    return _then(_$_Initial(
      productInputFields == freezed
          ? _value.productInputFields
          : productInputFields // ignore: cast_nullable_to_non_nullable
              as EditProductInputFields,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.productInputFields);

  @override
  final EditProductInputFields productInputFields;

  @override
  String toString() {
    return 'EditProductState.initial(productInputFields: $productInputFields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.productInputFields, productInputFields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productInputFields));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProductInputFields productInputFields)
        initial,
    required TResult Function(bool isValid) validate,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return initial(productInputFields);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
  }) {
    return initial?.call(productInputFields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(productInputFields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validate value) validate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(EditProductLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditProductState {
  const factory _Initial(final EditProductInputFields productInputFields) =
      _$_Initial;

  EditProductInputFields get productInputFields;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateCopyWith<$Res> {
  factory _$$_ValidateCopyWith(
          _$_Validate value, $Res Function(_$_Validate) then) =
      __$$_ValidateCopyWithImpl<$Res>;
  $Res call({bool isValid});
}

/// @nodoc
class __$$_ValidateCopyWithImpl<$Res>
    extends _$EditProductStateCopyWithImpl<$Res>
    implements _$$_ValidateCopyWith<$Res> {
  __$$_ValidateCopyWithImpl(
      _$_Validate _value, $Res Function(_$_Validate) _then)
      : super(_value, (v) => _then(v as _$_Validate));

  @override
  _$_Validate get _value => super._value as _$_Validate;

  @override
  $Res call({
    Object? isValid = freezed,
  }) {
    return _then(_$_Validate(
      isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Validate implements _Validate {
  const _$_Validate(this.isValid);

  @override
  final bool isValid;

  @override
  String toString() {
    return 'EditProductState.validate(isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Validate &&
            const DeepCollectionEquality().equals(other.isValid, isValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isValid));

  @JsonKey(ignore: true)
  @override
  _$$_ValidateCopyWith<_$_Validate> get copyWith =>
      __$$_ValidateCopyWithImpl<_$_Validate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProductInputFields productInputFields)
        initial,
    required TResult Function(bool isValid) validate,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return validate(isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
  }) {
    return validate?.call(isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validate value) validate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(EditProductLoading value) loading,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class _Validate implements EditProductState {
  const factory _Validate(final bool isValid) = _$_Validate;

  bool get isValid;
  @JsonKey(ignore: true)
  _$$_ValidateCopyWith<_$_Validate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res> extends _$EditProductStateCopyWithImpl<$Res>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, (v) => _then(v as _$Refresh));

  @override
  _$Refresh get _value => super._value as _$Refresh;
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'EditProductState.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProductInputFields productInputFields)
        initial,
    required TResult Function(bool isValid) validate,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validate value) validate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(EditProductLoading value) loading,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements EditProductState {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$EditProductLoadingCopyWith<$Res> {
  factory _$$EditProductLoadingCopyWith(_$EditProductLoading value,
          $Res Function(_$EditProductLoading) then) =
      __$$EditProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProductLoadingCopyWithImpl<$Res>
    extends _$EditProductStateCopyWithImpl<$Res>
    implements _$$EditProductLoadingCopyWith<$Res> {
  __$$EditProductLoadingCopyWithImpl(
      _$EditProductLoading _value, $Res Function(_$EditProductLoading) _then)
      : super(_value, (v) => _then(v as _$EditProductLoading));

  @override
  _$EditProductLoading get _value => super._value as _$EditProductLoading;
}

/// @nodoc

class _$EditProductLoading implements EditProductLoading {
  const _$EditProductLoading();

  @override
  String toString() {
    return 'EditProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProductInputFields productInputFields)
        initial,
    required TResult Function(bool isValid) validate,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProductInputFields productInputFields)? initial,
    TResult Function(bool isValid)? validate,
    TResult Function()? refresh,
    TResult Function()? loading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Validate value) validate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(EditProductLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Validate value)? validate,
    TResult Function(Refresh value)? refresh,
    TResult Function(EditProductLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditProductLoading implements EditProductState {
  const factory EditProductLoading() = _$EditProductLoading;
}
