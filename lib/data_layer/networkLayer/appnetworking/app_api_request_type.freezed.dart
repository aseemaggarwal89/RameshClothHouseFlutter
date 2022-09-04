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
  String get path => throw _privateConstructorUsedError;
  AppURLsType get baseUrlType => throw _privateConstructorUsedError;
  DataResponseType get responseType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
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
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
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
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_value.copyWith(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeFeedDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_HomeFeedDataRequestCopyWith(_$_HomeFeedDataRequest value,
          $Res Function(_$_HomeFeedDataRequest) then) =
      __$$_HomeFeedDataRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
}

/// @nodoc
class __$$_HomeFeedDataRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_HomeFeedDataRequestCopyWith<$Res> {
  __$$_HomeFeedDataRequestCopyWithImpl(_$_HomeFeedDataRequest _value,
      $Res Function(_$_HomeFeedDataRequest) _then)
      : super(_value, (v) => _then(v as _$_HomeFeedDataRequest));

  @override
  _$_HomeFeedDataRequest get _value => super._value as _$_HomeFeedDataRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_$_HomeFeedDataRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc

class _$_HomeFeedDataRequest implements _HomeFeedDataRequest {
  const _$_HomeFeedDataRequest(
      {this.method = HttpMethod.post,
      this.path = "/homeFeed/you",
      this.baseUrlType = AppURLsType.ugc,
      this.responseType = DataResponseType.json});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final DataResponseType responseType;

  @override
  String toString() {
    return 'ApiRequestType.getHomeFeedData(method: $method, path: $path, baseUrlType: $baseUrlType, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeFeedDataRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality()
                .equals(other.responseType, responseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(responseType));

  @JsonKey(ignore: true)
  @override
  _$$_HomeFeedDataRequestCopyWith<_$_HomeFeedDataRequest> get copyWith =>
      __$$_HomeFeedDataRequestCopyWithImpl<_$_HomeFeedDataRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) {
    return getHomeFeedData(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) {
    return getHomeFeedData?.call(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getHomeFeedData != null) {
      return getHomeFeedData(method, path, baseUrlType, responseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) {
    return getHomeFeedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) {
    return getHomeFeedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getHomeFeedData != null) {
      return getHomeFeedData(this);
    }
    return orElse();
  }
}

abstract class _HomeFeedDataRequest implements ApiRequestType {
  const factory _HomeFeedDataRequest(
      {final HttpMethod method,
      final String path,
      final AppURLsType baseUrlType,
      final DataResponseType responseType}) = _$_HomeFeedDataRequest;

  @override
  HttpMethod get method;
  @override
  String get path;
  @override
  AppURLsType get baseUrlType;
  @override
  DataResponseType get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_HomeFeedDataRequestCopyWith<_$_HomeFeedDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_ProductDataRequestCopyWith(_$_ProductDataRequest value,
          $Res Function(_$_ProductDataRequest) then) =
      __$$_ProductDataRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
}

/// @nodoc
class __$$_ProductDataRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_ProductDataRequestCopyWith<$Res> {
  __$$_ProductDataRequestCopyWithImpl(
      _$_ProductDataRequest _value, $Res Function(_$_ProductDataRequest) _then)
      : super(_value, (v) => _then(v as _$_ProductDataRequest));

  @override
  _$_ProductDataRequest get _value => super._value as _$_ProductDataRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_$_ProductDataRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc

class _$_ProductDataRequest implements _ProductDataRequest {
  const _$_ProductDataRequest(
      {this.method = HttpMethod.post,
      this.path = '/catalog',
      this.baseUrlType = AppURLsType.commerce,
      this.responseType = DataResponseType.json});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final DataResponseType responseType;

  @override
  String toString() {
    return 'ApiRequestType.getProductData(method: $method, path: $path, baseUrlType: $baseUrlType, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDataRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality()
                .equals(other.responseType, responseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(responseType));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDataRequestCopyWith<_$_ProductDataRequest> get copyWith =>
      __$$_ProductDataRequestCopyWithImpl<_$_ProductDataRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) {
    return getProductData(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) {
    return getProductData?.call(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getProductData != null) {
      return getProductData(method, path, baseUrlType, responseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) {
    return getProductData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) {
    return getProductData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getProductData != null) {
      return getProductData(this);
    }
    return orElse();
  }
}

abstract class _ProductDataRequest implements ApiRequestType {
  const factory _ProductDataRequest(
      {final HttpMethod method,
      final String path,
      final AppURLsType baseUrlType,
      final DataResponseType responseType}) = _$_ProductDataRequest;

  @override
  HttpMethod get method;
  @override
  String get path;
  @override
  AppURLsType get baseUrlType;
  @override
  DataResponseType get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDataRequestCopyWith<_$_ProductDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_ProfileDataRequestCopyWith(_$_ProfileDataRequest value,
          $Res Function(_$_ProfileDataRequest) then) =
      __$$_ProfileDataRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
}

/// @nodoc
class __$$_ProfileDataRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_ProfileDataRequestCopyWith<$Res> {
  __$$_ProfileDataRequestCopyWithImpl(
      _$_ProfileDataRequest _value, $Res Function(_$_ProfileDataRequest) _then)
      : super(_value, (v) => _then(v as _$_ProfileDataRequest));

  @override
  _$_ProfileDataRequest get _value => super._value as _$_ProfileDataRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_$_ProfileDataRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc

class _$_ProfileDataRequest implements _ProfileDataRequest {
  const _$_ProfileDataRequest(
      {this.method = HttpMethod.get,
      this.path = '/profileApis/v1/getProfile',
      this.baseUrlType = AppURLsType.aggregator,
      this.responseType = DataResponseType.json});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final DataResponseType responseType;

  @override
  String toString() {
    return 'ApiRequestType.getProfileData(method: $method, path: $path, baseUrlType: $baseUrlType, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDataRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality()
                .equals(other.responseType, responseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(responseType));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileDataRequestCopyWith<_$_ProfileDataRequest> get copyWith =>
      __$$_ProfileDataRequestCopyWithImpl<_$_ProfileDataRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) {
    return getProfileData(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) {
    return getProfileData?.call(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData(method, path, baseUrlType, responseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) {
    return getProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) {
    return getProfileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getProfileData != null) {
      return getProfileData(this);
    }
    return orElse();
  }
}

abstract class _ProfileDataRequest implements ApiRequestType {
  const factory _ProfileDataRequest(
      {final HttpMethod method,
      final String path,
      final AppURLsType baseUrlType,
      final DataResponseType responseType}) = _$_ProfileDataRequest;

  @override
  HttpMethod get method;
  @override
  String get path;
  @override
  AppURLsType get baseUrlType;
  @override
  DataResponseType get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDataRequestCopyWith<_$_ProfileDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_SearchDataRequestCopyWith(_$_SearchDataRequest value,
          $Res Function(_$_SearchDataRequest) then) =
      __$$_SearchDataRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
}

/// @nodoc
class __$$_SearchDataRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_SearchDataRequestCopyWith<$Res> {
  __$$_SearchDataRequestCopyWithImpl(
      _$_SearchDataRequest _value, $Res Function(_$_SearchDataRequest) _then)
      : super(_value, (v) => _then(v as _$_SearchDataRequest));

  @override
  _$_SearchDataRequest get _value => super._value as _$_SearchDataRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_$_SearchDataRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc

class _$_SearchDataRequest implements _SearchDataRequest {
  const _$_SearchDataRequest(
      {this.method = HttpMethod.post,
      this.path = '/autocomplete/v2',
      this.baseUrlType = AppURLsType.search,
      this.responseType = DataResponseType.json});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final DataResponseType responseType;

  @override
  String toString() {
    return 'ApiRequestType.getSearchData(method: $method, path: $path, baseUrlType: $baseUrlType, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDataRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality()
                .equals(other.responseType, responseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(responseType));

  @JsonKey(ignore: true)
  @override
  _$$_SearchDataRequestCopyWith<_$_SearchDataRequest> get copyWith =>
      __$$_SearchDataRequestCopyWithImpl<_$_SearchDataRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) {
    return getSearchData(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) {
    return getSearchData?.call(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getSearchData != null) {
      return getSearchData(method, path, baseUrlType, responseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) {
    return getSearchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) {
    return getSearchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getSearchData != null) {
      return getSearchData(this);
    }
    return orElse();
  }
}

abstract class _SearchDataRequest implements ApiRequestType {
  const factory _SearchDataRequest(
      {final HttpMethod method,
      final String path,
      final AppURLsType baseUrlType,
      final DataResponseType responseType}) = _$_SearchDataRequest;

  @override
  HttpMethod get method;
  @override
  String get path;
  @override
  AppURLsType get baseUrlType;
  @override
  DataResponseType get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDataRequestCopyWith<_$_SearchDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserContentDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_UserContentDataRequestCopyWith(_$_UserContentDataRequest value,
          $Res Function(_$_UserContentDataRequest) then) =
      __$$_UserContentDataRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
}

/// @nodoc
class __$$_UserContentDataRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_UserContentDataRequestCopyWith<$Res> {
  __$$_UserContentDataRequestCopyWithImpl(_$_UserContentDataRequest _value,
      $Res Function(_$_UserContentDataRequest) _then)
      : super(_value, (v) => _then(v as _$_UserContentDataRequest));

  @override
  _$_UserContentDataRequest get _value =>
      super._value as _$_UserContentDataRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_$_UserContentDataRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc

class _$_UserContentDataRequest implements _UserContentDataRequest {
  const _$_UserContentDataRequest(
      {this.method = HttpMethod.post,
      this.path = '/profileApis/v1/getProfile',
      this.baseUrlType = AppURLsType.aggregator,
      this.responseType = DataResponseType.json});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final DataResponseType responseType;

  @override
  String toString() {
    return 'ApiRequestType.getUserContentData(method: $method, path: $path, baseUrlType: $baseUrlType, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserContentDataRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality()
                .equals(other.responseType, responseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(responseType));

  @JsonKey(ignore: true)
  @override
  _$$_UserContentDataRequestCopyWith<_$_UserContentDataRequest> get copyWith =>
      __$$_UserContentDataRequestCopyWithImpl<_$_UserContentDataRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) {
    return getUserContentData(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) {
    return getUserContentData?.call(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getUserContentData != null) {
      return getUserContentData(method, path, baseUrlType, responseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) {
    return getUserContentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) {
    return getUserContentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getUserContentData != null) {
      return getUserContentData(this);
    }
    return orElse();
  }
}

abstract class _UserContentDataRequest implements ApiRequestType {
  const factory _UserContentDataRequest(
      {final HttpMethod method,
      final String path,
      final AppURLsType baseUrlType,
      final DataResponseType responseType}) = _$_UserContentDataRequest;

  @override
  HttpMethod get method;
  @override
  String get path;
  @override
  AppURLsType get baseUrlType;
  @override
  DataResponseType get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_UserContentDataRequestCopyWith<_$_UserContentDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_DownloadDataRequestCopyWith(_$_DownloadDataRequest value,
          $Res Function(_$_DownloadDataRequest) then) =
      __$$_DownloadDataRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
}

/// @nodoc
class __$$_DownloadDataRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_DownloadDataRequestCopyWith<$Res> {
  __$$_DownloadDataRequestCopyWithImpl(_$_DownloadDataRequest _value,
      $Res Function(_$_DownloadDataRequest) _then)
      : super(_value, (v) => _then(v as _$_DownloadDataRequest));

  @override
  _$_DownloadDataRequest get _value => super._value as _$_DownloadDataRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_$_DownloadDataRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc

class _$_DownloadDataRequest implements _DownloadDataRequest {
  const _$_DownloadDataRequest(
      {this.method = HttpMethod.get,
      required this.path,
      this.baseUrlType = AppURLsType.search,
      this.responseType = DataResponseType.bytes});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  final String path;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final DataResponseType responseType;

  @override
  String toString() {
    return 'ApiRequestType.getDownloadData(method: $method, path: $path, baseUrlType: $baseUrlType, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadDataRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality()
                .equals(other.responseType, responseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(responseType));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadDataRequestCopyWith<_$_DownloadDataRequest> get copyWith =>
      __$$_DownloadDataRequestCopyWithImpl<_$_DownloadDataRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) {
    return getDownloadData(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) {
    return getDownloadData?.call(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getDownloadData != null) {
      return getDownloadData(method, path, baseUrlType, responseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) {
    return getDownloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) {
    return getDownloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getDownloadData != null) {
      return getDownloadData(this);
    }
    return orElse();
  }
}

abstract class _DownloadDataRequest implements ApiRequestType {
  const factory _DownloadDataRequest(
      {final HttpMethod method,
      required final String path,
      final AppURLsType baseUrlType,
      final DataResponseType responseType}) = _$_DownloadDataRequest;

  @override
  HttpMethod get method;
  @override
  String get path;
  @override
  AppURLsType get baseUrlType;
  @override
  DataResponseType get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadDataRequestCopyWith<_$_DownloadDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadCreateContentDataRequestCopyWith<$Res>
    implements $ApiRequestTypeCopyWith<$Res> {
  factory _$$_UploadCreateContentDataRequestCopyWith(
          _$_UploadCreateContentDataRequest value,
          $Res Function(_$_UploadCreateContentDataRequest) then) =
      __$$_UploadCreateContentDataRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpMethod method,
      String path,
      AppURLsType baseUrlType,
      DataResponseType responseType});
}

/// @nodoc
class __$$_UploadCreateContentDataRequestCopyWithImpl<$Res>
    extends _$ApiRequestTypeCopyWithImpl<$Res>
    implements _$$_UploadCreateContentDataRequestCopyWith<$Res> {
  __$$_UploadCreateContentDataRequestCopyWithImpl(
      _$_UploadCreateContentDataRequest _value,
      $Res Function(_$_UploadCreateContentDataRequest) _then)
      : super(_value, (v) => _then(v as _$_UploadCreateContentDataRequest));

  @override
  _$_UploadCreateContentDataRequest get _value =>
      super._value as _$_UploadCreateContentDataRequest;

  @override
  $Res call({
    Object? method = freezed,
    Object? path = freezed,
    Object? baseUrlType = freezed,
    Object? responseType = freezed,
  }) {
    return _then(_$_UploadCreateContentDataRequest(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlType: baseUrlType == freezed
          ? _value.baseUrlType
          : baseUrlType // ignore: cast_nullable_to_non_nullable
              as AppURLsType,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as DataResponseType,
    ));
  }
}

/// @nodoc

class _$_UploadCreateContentDataRequest
    implements _UploadCreateContentDataRequest {
  const _$_UploadCreateContentDataRequest(
      {this.method = HttpMethod.post,
      this.path = '/createContentV2',
      this.baseUrlType = AppURLsType.ugc,
      this.responseType = DataResponseType.json});

  @override
  @JsonKey()
  final HttpMethod method;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final AppURLsType baseUrlType;
  @override
  @JsonKey()
  final DataResponseType responseType;

  @override
  String toString() {
    return 'ApiRequestType.getUploadCreateContentData(method: $method, path: $path, baseUrlType: $baseUrlType, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadCreateContentDataRequest &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.baseUrlType, baseUrlType) &&
            const DeepCollectionEquality()
                .equals(other.responseType, responseType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(baseUrlType),
      const DeepCollectionEquality().hash(responseType));

  @JsonKey(ignore: true)
  @override
  _$$_UploadCreateContentDataRequestCopyWith<_$_UploadCreateContentDataRequest>
      get copyWith => __$$_UploadCreateContentDataRequestCopyWithImpl<
          _$_UploadCreateContentDataRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getHomeFeedData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProductData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getProfileData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getSearchData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUserContentData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getDownloadData,
    required TResult Function(HttpMethod method, String path,
            AppURLsType baseUrlType, DataResponseType responseType)
        getUploadCreateContentData,
  }) {
    return getUploadCreateContentData(method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
  }) {
    return getUploadCreateContentData?.call(
        method, path, baseUrlType, responseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getHomeFeedData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProductData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getProfileData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getSearchData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUserContentData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getDownloadData,
    TResult Function(HttpMethod method, String path, AppURLsType baseUrlType,
            DataResponseType responseType)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getUploadCreateContentData != null) {
      return getUploadCreateContentData(
          method, path, baseUrlType, responseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeFeedDataRequest value) getHomeFeedData,
    required TResult Function(_ProductDataRequest value) getProductData,
    required TResult Function(_ProfileDataRequest value) getProfileData,
    required TResult Function(_SearchDataRequest value) getSearchData,
    required TResult Function(_UserContentDataRequest value) getUserContentData,
    required TResult Function(_DownloadDataRequest value) getDownloadData,
    required TResult Function(_UploadCreateContentDataRequest value)
        getUploadCreateContentData,
  }) {
    return getUploadCreateContentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
  }) {
    return getUploadCreateContentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeFeedDataRequest value)? getHomeFeedData,
    TResult Function(_ProductDataRequest value)? getProductData,
    TResult Function(_ProfileDataRequest value)? getProfileData,
    TResult Function(_SearchDataRequest value)? getSearchData,
    TResult Function(_UserContentDataRequest value)? getUserContentData,
    TResult Function(_DownloadDataRequest value)? getDownloadData,
    TResult Function(_UploadCreateContentDataRequest value)?
        getUploadCreateContentData,
    required TResult orElse(),
  }) {
    if (getUploadCreateContentData != null) {
      return getUploadCreateContentData(this);
    }
    return orElse();
  }
}

abstract class _UploadCreateContentDataRequest implements ApiRequestType {
  const factory _UploadCreateContentDataRequest(
      {final HttpMethod method,
      final String path,
      final AppURLsType baseUrlType,
      final DataResponseType responseType}) = _$_UploadCreateContentDataRequest;

  @override
  HttpMethod get method;
  @override
  String get path;
  @override
  AppURLsType get baseUrlType;
  @override
  DataResponseType get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_UploadCreateContentDataRequestCopyWith<_$_UploadCreateContentDataRequest>
      get copyWith => throw _privateConstructorUsedError;
}
