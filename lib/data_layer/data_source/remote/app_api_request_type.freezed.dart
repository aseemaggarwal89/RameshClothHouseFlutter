// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_api_request_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiRequestType {
  HttpMethod get method;
  APIRequestNodeType get nodeType;
  AppURLsType get baseUrlType;
  String get path;

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiRequestTypeCopyWith<ApiRequestType> get copyWith =>
      _$ApiRequestTypeCopyWithImpl<ApiRequestType>(
          this as ApiRequestType, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiRequestType &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            (identical(other.baseUrlType, baseUrlType) ||
                other.baseUrlType == baseUrlType) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, method, nodeType, baseUrlType, path);

  @override
  String toString() {
    return 'ApiRequestType(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }
}

/// @nodoc
abstract mixin class $ApiRequestTypeCopyWith<$Res> {
  factory $ApiRequestTypeCopyWith(
          ApiRequestType value, $Res Function(ApiRequestType) _then) =
      _$ApiRequestTypeCopyWithImpl;
  @useResult
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class _$ApiRequestTypeCopyWithImpl<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  _$ApiRequestTypeCopyWithImpl(this._self, this._then);

  final ApiRequestType _self;
  final $Res Function(ApiRequestType) _then;

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? nodeType = null,
    Object? baseUrlType = null,
    Object? path = null,
  }) {
    return _then(_self.copyWith(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: null == nodeType
          ? _self.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: null == baseUrlType
          ? _self.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetAllRequest implements ApiRequestType {
  const _GetAllRequest(
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

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetAllRequestCopyWith<_GetAllRequest> get copyWith =>
      __$GetAllRequestCopyWithImpl<_GetAllRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllRequest &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            (identical(other.baseUrlType, baseUrlType) ||
                other.baseUrlType == baseUrlType) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, method, nodeType, baseUrlType, path);

  @override
  String toString() {
    return 'ApiRequestType.getAll(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }
}

/// @nodoc
abstract mixin class _$GetAllRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$GetAllRequestCopyWith(
          _GetAllRequest value, $Res Function(_GetAllRequest) _then) =
      __$GetAllRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$GetAllRequestCopyWithImpl<$Res>
    implements _$GetAllRequestCopyWith<$Res> {
  __$GetAllRequestCopyWithImpl(this._self, this._then);

  final _GetAllRequest _self;
  final $Res Function(_GetAllRequest) _then;

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = null,
    Object? nodeType = null,
    Object? baseUrlType = null,
    Object? path = null,
  }) {
    return _then(_GetAllRequest(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: null == nodeType
          ? _self.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: null == baseUrlType
          ? _self.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PostDataRequest implements ApiRequestType {
  const _PostDataRequest(
      {this.method = HttpMethod.post,
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

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostDataRequestCopyWith<_PostDataRequest> get copyWith =>
      __$PostDataRequestCopyWithImpl<_PostDataRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostDataRequest &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            (identical(other.baseUrlType, baseUrlType) ||
                other.baseUrlType == baseUrlType) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, method, nodeType, baseUrlType, path);

  @override
  String toString() {
    return 'ApiRequestType.postData(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }
}

/// @nodoc
abstract mixin class _$PostDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$PostDataRequestCopyWith(
          _PostDataRequest value, $Res Function(_PostDataRequest) _then) =
      __$PostDataRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$PostDataRequestCopyWithImpl<$Res>
    implements _$PostDataRequestCopyWith<$Res> {
  __$PostDataRequestCopyWithImpl(this._self, this._then);

  final _PostDataRequest _self;
  final $Res Function(_PostDataRequest) _then;

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = null,
    Object? nodeType = null,
    Object? baseUrlType = null,
    Object? path = null,
  }) {
    return _then(_PostDataRequest(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: null == nodeType
          ? _self.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: null == baseUrlType
          ? _self.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ProductRequest implements ApiRequestType {
  const _ProductRequest(
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

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductRequestCopyWith<_ProductRequest> get copyWith =>
      __$ProductRequestCopyWithImpl<_ProductRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductRequest &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            (identical(other.baseUrlType, baseUrlType) ||
                other.baseUrlType == baseUrlType) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, method, nodeType, baseUrlType, path);

  @override
  String toString() {
    return 'ApiRequestType.product(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }
}

/// @nodoc
abstract mixin class _$ProductRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$ProductRequestCopyWith(
          _ProductRequest value, $Res Function(_ProductRequest) _then) =
      __$ProductRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$ProductRequestCopyWithImpl<$Res>
    implements _$ProductRequestCopyWith<$Res> {
  __$ProductRequestCopyWithImpl(this._self, this._then);

  final _ProductRequest _self;
  final $Res Function(_ProductRequest) _then;

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = null,
    Object? nodeType = null,
    Object? baseUrlType = null,
    Object? path = null,
  }) {
    return _then(_ProductRequest(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: null == nodeType
          ? _self.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: null == baseUrlType
          ? _self.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _AuthRequest implements ApiRequestType {
  const _AuthRequest(
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

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthRequestCopyWith<_AuthRequest> get copyWith =>
      __$AuthRequestCopyWithImpl<_AuthRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthRequest &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            (identical(other.baseUrlType, baseUrlType) ||
                other.baseUrlType == baseUrlType) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, method, nodeType, baseUrlType, path);

  @override
  String toString() {
    return 'ApiRequestType.auth(method: $method, nodeType: $nodeType, baseUrlType: $baseUrlType, path: $path)';
  }
}

/// @nodoc
abstract mixin class _$AuthRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$AuthRequestCopyWith(
          _AuthRequest value, $Res Function(_AuthRequest) _then) =
      __$AuthRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {HttpMethod method,
      APIRequestNodeType nodeType,
      AppURLsType baseUrlType,
      String path});
}

/// @nodoc
class __$AuthRequestCopyWithImpl<$Res> implements _$AuthRequestCopyWith<$Res> {
  __$AuthRequestCopyWithImpl(this._self, this._then);

  final _AuthRequest _self;
  final $Res Function(_AuthRequest) _then;

  /// Create a copy of ApiRequestType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = null,
    Object? nodeType = null,
    Object? baseUrlType = null,
    Object? path = null,
  }) {
    return _then(_AuthRequest(
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      nodeType: null == nodeType
          ? _self.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as APIRequestNodeType,
      baseUrlType: null == baseUrlType
          ? _self.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
