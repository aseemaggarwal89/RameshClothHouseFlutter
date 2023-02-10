// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_api_request_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiRequestType {
  HttpMethod get method => throw _privateConstructorUsedError;
  APIRequestNodeType get nodeType => throw _privateConstructorUsedError;
  AppURLsType get baseUrlType => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        getAll,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        product,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        brand,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        category,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        auth,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        colorInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllRequest value) getAll,
    required TResult Function(_ProductRequest value) product,
    required TResult Function(_BrandRequest value) brand,
    required TResult Function(_CategoryRequest value) category,
    required TResult Function(_AuthRequest value) auth,
    required TResult Function(_ColorInfo value) colorInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiRequestTypeCopyWith<ApiRequestType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRequestTypeCopyWith<$Res> {
  factory $ApiRequestTypeCopyWith(
          ApiRequestType value, $Res Function(ApiRequestType) then) =
      _$ApiRequestTypeCopyWithImpl<$Res>;
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class _$ApiRequestTypeCopyWithImpl<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  _$ApiRequestTypeCopyWithImpl(this._value, this._then);

  final ApiRequestType _value;
  // ignore: unused_field
  final $Res Function(ApiRequestType) _then;

  @override
  $Res call({
    Object? method = freezed,
    Object? nodeType = freezed,
    Object? baseUrlType = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetAllRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_GetAllRequestCopyWith(
          _$_GetAllRequest value, $Res Function(_$_GetAllRequest) then) =
      __$$_GetAllRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$$_GetAllRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_GetAllRequestCopyWith<$Res> {
  __$$_GetAllRequestCopyWithImpl(
      _$_GetAllRequest _value, $Res Function(_$_GetAllRequest) _then)
      : super(_value, (v) => _then(v as _$_GetAllRequest));

  @override
  _$_GetAllRequest get _value => super._value as _$_GetAllRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? nodeType = freezed,
    Object? baseUrlType = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_GetAllRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllRequest implements _GetAllRequest {
  const _$_GetAllRequest(
      {this.method = HttpMethod.get,
      required this.nodeType,
      this.baseUrlType = AppURLsType.ugc,
      this.path = ""});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  final APIRequestNodeType nodeType;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'ApiRequestType.getAll(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.nodeType, nodeType) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(nodeType),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_GetAllRequestCopyWith<_$_GetAllRequest> get copyWith =>
      __$$_GetAllRequestCopyWithImpl<_$_GetAllRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        getAll,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        product,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        brand,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        category,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        auth,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        colorInfo,
  }) {
    return getAll(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
  }) {
    return getAll?.call(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(method, nodeType, baseUrlType, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllRequest value) getAll,
    required TResult Function(_ProductRequest value) product,
    required TResult Function(_BrandRequest value) brand,
    required TResult Function(_CategoryRequest value) category,
    required TResult Function(_AuthRequest value) auth,
    required TResult Function(_ColorInfo value) colorInfo,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAllRequest implements ApiRequestType {
  const factory _GetAllRequest(
      {final HttpMethod method,
      required final APIRequestNodeType nodeType,
      final AppURLsType baseUrlType,
      final String path}) = _$_GetAllRequest;

  @override
  HttpMethod get method;
  @override
  APIRequestNodeType get nodeType;
  @override
  AppURLsType get baseUrlType;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllRequestCopyWith<_$_GetAllRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_ProductRequestCopyWith(
          _$_ProductRequest value, $Res Function(_$_ProductRequest) then) =
      __$$_ProductRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$$_ProductRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_ProductRequestCopyWith<$Res> {
  __$$_ProductRequestCopyWithImpl(
      _$_ProductRequest _value, $Res Function(_$_ProductRequest) _then)
      : super(_value, (v) => _then(v as _$_ProductRequest));

  @override
  _$_ProductRequest get _value => super._value as _$_ProductRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? nodeType = freezed,
    Object? baseUrlType = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_ProductRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductRequest implements _ProductRequest {
  const _$_ProductRequest(
      {this.method = HttpMethod.get,
      this.nodeType = APIRequestNodeType.product,
      this.baseUrlType = AppURLsType.ugc,
      this.path = ""});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final APIRequestNodeType nodeType;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'ApiRequestType.product(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.nodeType, nodeType) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(nodeType),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_ProductRequestCopyWith<_$_ProductRequest> get copyWith =>
      __$$_ProductRequestCopyWithImpl<_$_ProductRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        getAll,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        product,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        brand,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        category,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        auth,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        colorInfo,
  }) {
    return product(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
  }) {
    return product?.call(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(method, nodeType, baseUrlType, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllRequest value) getAll,
    required TResult Function(_ProductRequest value) product,
    required TResult Function(_BrandRequest value) brand,
    required TResult Function(_CategoryRequest value) category,
    required TResult Function(_AuthRequest value) auth,
    required TResult Function(_ColorInfo value) colorInfo,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class _ProductRequest implements ApiRequestType {
  const factory _ProductRequest(
      {final HttpMethod method,
      final APIRequestNodeType nodeType,
      final AppURLsType baseUrlType,
      final String path}) = _$_ProductRequest;

  @override
  HttpMethod get method;
  @override
  APIRequestNodeType get nodeType;
  @override
  AppURLsType get baseUrlType;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_ProductRequestCopyWith<_$_ProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BrandRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_BrandRequestCopyWith(
          _$_BrandRequest value, $Res Function(_$_BrandRequest) then) =
      __$$_BrandRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$$_BrandRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_BrandRequestCopyWith<$Res> {
  __$$_BrandRequestCopyWithImpl(
      _$_BrandRequest _value, $Res Function(_$_BrandRequest) _then)
      : super(_value, (v) => _then(v as _$_BrandRequest));

  @override
  _$_BrandRequest get _value => super._value as _$_BrandRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? nodeType = freezed,
    Object? baseUrlType = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_BrandRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BrandRequest implements _BrandRequest {
  const _$_BrandRequest(
      {this.method = HttpMethod.get,
      this.nodeType = APIRequestNodeType.brand,
      this.baseUrlType = AppURLsType.ugc,
      this.path = ""});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final APIRequestNodeType nodeType;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'ApiRequestType.brand(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.nodeType, nodeType) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(nodeType),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_BrandRequestCopyWith<_$_BrandRequest> get copyWith =>
      __$$_BrandRequestCopyWithImpl<_$_BrandRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        getAll,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        product,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        brand,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        category,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        auth,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        colorInfo,
  }) {
    return brand(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
  }) {
    return brand?.call(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
    required TResult orElse(),
  }) {
    if (brand != null) {
      return brand(method, nodeType, baseUrlType, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllRequest value) getAll,
    required TResult Function(_ProductRequest value) product,
    required TResult Function(_BrandRequest value) brand,
    required TResult Function(_CategoryRequest value) category,
    required TResult Function(_AuthRequest value) auth,
    required TResult Function(_ColorInfo value) colorInfo,
  }) {
    return brand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
  }) {
    return brand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
    required TResult orElse(),
  }) {
    if (brand != null) {
      return brand(this);
    }
    return orElse();
  }
}

abstract class _BrandRequest implements ApiRequestType {
  const factory _BrandRequest(
      {final HttpMethod method,
      final APIRequestNodeType nodeType,
      final AppURLsType baseUrlType,
      final String path}) = _$_BrandRequest;

  @override
  HttpMethod get method;
  @override
  APIRequestNodeType get nodeType;
  @override
  AppURLsType get baseUrlType;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_BrandRequestCopyWith<_$_BrandRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_CategoryRequestCopyWith(
          _$_CategoryRequest value, $Res Function(_$_CategoryRequest) then) =
      __$$_CategoryRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$$_CategoryRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_CategoryRequestCopyWith<$Res> {
  __$$_CategoryRequestCopyWithImpl(
      _$_CategoryRequest _value, $Res Function(_$_CategoryRequest) _then)
      : super(_value, (v) => _then(v as _$_CategoryRequest));

  @override
  _$_CategoryRequest get _value => super._value as _$_CategoryRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? nodeType = freezed,
    Object? baseUrlType = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_CategoryRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryRequest implements _CategoryRequest {
  const _$_CategoryRequest(
      {this.method = HttpMethod.get,
      this.nodeType = APIRequestNodeType.category,
      this.baseUrlType = AppURLsType.ugc,
      this.path = ""});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final APIRequestNodeType nodeType;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'ApiRequestType.category(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.nodeType, nodeType) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(nodeType),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryRequestCopyWith<_$_CategoryRequest> get copyWith =>
      __$$_CategoryRequestCopyWithImpl<_$_CategoryRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        getAll,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        product,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        brand,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        category,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        auth,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        colorInfo,
  }) {
    return category(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
  }) {
    return category?.call(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(method, nodeType, baseUrlType, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllRequest value) getAll,
    required TResult Function(_ProductRequest value) product,
    required TResult Function(_BrandRequest value) brand,
    required TResult Function(_CategoryRequest value) category,
    required TResult Function(_AuthRequest value) auth,
    required TResult Function(_ColorInfo value) colorInfo,
  }) {
    return category(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
  }) {
    return category?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(this);
    }
    return orElse();
  }
}

abstract class _CategoryRequest implements ApiRequestType {
  const factory _CategoryRequest(
      {final HttpMethod method,
      final APIRequestNodeType nodeType,
      final AppURLsType baseUrlType,
      final String path}) = _$_CategoryRequest;

  @override
  HttpMethod get method;
  @override
  APIRequestNodeType get nodeType;
  @override
  AppURLsType get baseUrlType;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryRequestCopyWith<_$_CategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_AuthRequestCopyWith(
          _$_AuthRequest value, $Res Function(_$_AuthRequest) then) =
      __$$_AuthRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$$_AuthRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_AuthRequestCopyWith<$Res> {
  __$$_AuthRequestCopyWithImpl(
      _$_AuthRequest _value, $Res Function(_$_AuthRequest) _then)
      : super(_value, (v) => _then(v as _$_AuthRequest));

  @override
  _$_AuthRequest get _value => super._value as _$_AuthRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? nodeType = freezed,
    Object? baseUrlType = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_AuthRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthRequest implements _AuthRequest {
  const _$_AuthRequest(
      {this.method = HttpMethod.post,
      this.nodeType = APIRequestNodeType.auth,
      this.baseUrlType = AppURLsType.ugc,
      this.path = ""});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final APIRequestNodeType nodeType;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'ApiRequestType.auth(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.nodeType, nodeType) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(nodeType),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_AuthRequestCopyWith<_$_AuthRequest> get copyWith =>
      __$$_AuthRequestCopyWithImpl<_$_AuthRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        getAll,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        product,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        brand,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        category,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        auth,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        colorInfo,
  }) {
    return auth(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
  }) {
    return auth?.call(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(method, nodeType, baseUrlType, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllRequest value) getAll,
    required TResult Function(_ProductRequest value) product,
    required TResult Function(_BrandRequest value) brand,
    required TResult Function(_CategoryRequest value) category,
    required TResult Function(_AuthRequest value) auth,
    required TResult Function(_ColorInfo value) colorInfo,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _AuthRequest implements ApiRequestType {
  const factory _AuthRequest(
      {final HttpMethod method,
      final APIRequestNodeType nodeType,
      final AppURLsType baseUrlType,
      final String path}) = _$_AuthRequest;

  @override
  HttpMethod get method;
  @override
  APIRequestNodeType get nodeType;
  @override
  AppURLsType get baseUrlType;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_AuthRequestCopyWith<_$_AuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ColorInfoCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_ColorInfoCopyWith(
          _$_ColorInfo value, $Res Function(_$_ColorInfo) then) =
      __$$_ColorInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$$_ColorInfoCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_ColorInfoCopyWith<$Res> {
  __$$_ColorInfoCopyWithImpl(
      _$_ColorInfo _value, $Res Function(_$_ColorInfo) _then)
      : super(_value, (v) => _then(v as _$_ColorInfo));

  @override
  _$_ColorInfo get _value => super._value as _$_ColorInfo;

  @override
  $Res call({
    Object? method = freezed,
    Object? nodeType = freezed,
    Object? baseUrlType = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_ColorInfo(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ColorInfo implements _ColorInfo {
  const _$_ColorInfo(
      {this.method = HttpMethod.get,
      this.nodeType = APIRequestNodeType.colorInfo,
      this.baseUrlType = AppURLsType.ugc,
      this.path = ""});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final APIRequestNodeType nodeType;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final String path;

  @override
  String toString() {
    return 'ApiRequestType.colorInfo(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorInfo &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.nodeType, nodeType) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(nodeType),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_ColorInfoCopyWith<_$_ColorInfo> get copyWith =>
      __$$_ColorInfoCopyWithImpl<_$_ColorInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        getAll,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        product,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        brand,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        category,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        auth,
    required TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)
        colorInfo,
  }) {
    return colorInfo(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
  }) {
    return colorInfo?.call(method, nodeType, baseUrlType, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        getAll,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        product,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        brand,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        category,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        auth,
    TResult Function(HttpMethod method, APIRequestNodeType nodeType,
            AppURLsType baseUrlType, String path)?
        colorInfo,
    required TResult orElse(),
  }) {
    if (colorInfo != null) {
      return colorInfo(method, nodeType, baseUrlType, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllRequest value) getAll,
    required TResult Function(_ProductRequest value) product,
    required TResult Function(_BrandRequest value) brand,
    required TResult Function(_CategoryRequest value) category,
    required TResult Function(_AuthRequest value) auth,
    required TResult Function(_ColorInfo value) colorInfo,
  }) {
    return colorInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
  }) {
    return colorInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllRequest value)? getAll,
    TResult Function(_ProductRequest value)? product,
    TResult Function(_BrandRequest value)? brand,
    TResult Function(_CategoryRequest value)? category,
    TResult Function(_AuthRequest value)? auth,
    TResult Function(_ColorInfo value)? colorInfo,
    required TResult orElse(),
  }) {
    if (colorInfo != null) {
      return colorInfo(this);
    }
    return orElse();
  }
}

abstract class _ColorInfo implements ApiRequestType {
  const factory _ColorInfo(
      {final HttpMethod method,
      final APIRequestNodeType nodeType,
      final AppURLsType baseUrlType,
      final String path}) = _$_ColorInfo;

  @override
  HttpMethod get method;
  @override
  APIRequestNodeType get nodeType;
  @override
  AppURLsType get baseUrlType;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_ColorInfoCopyWith<_$_ColorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
