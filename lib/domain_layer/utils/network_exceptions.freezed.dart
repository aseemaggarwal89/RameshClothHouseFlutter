// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkExceptions implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'NetworkExceptions'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkExceptions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions()';
  }
}

/// @nodoc
class $NetworkExceptionsCopyWith<$Res> {
  $NetworkExceptionsCopyWith(
      NetworkExceptions _, $Res Function(NetworkExceptions) __);
}

/// @nodoc

class RequestCancelled
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const RequestCancelled();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.requestCancelled'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.requestCancelled()';
  }
}

/// @nodoc

class UnauthorizedRequest
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const UnauthorizedRequest(this.reason);

  final String reason;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnauthorizedRequestCopyWith<UnauthorizedRequest> get copyWith =>
      _$UnauthorizedRequestCopyWithImpl<UnauthorizedRequest>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.unauthorizedRequest'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnauthorizedRequest &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unauthorizedRequest(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $UnauthorizedRequestCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnauthorizedRequestCopyWith(
          UnauthorizedRequest value, $Res Function(UnauthorizedRequest) _then) =
      _$UnauthorizedRequestCopyWithImpl;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$UnauthorizedRequestCopyWithImpl<$Res>
    implements $UnauthorizedRequestCopyWith<$Res> {
  _$UnauthorizedRequestCopyWithImpl(this._self, this._then);

  final UnauthorizedRequest _self;
  final $Res Function(UnauthorizedRequest) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
  }) {
    return _then(UnauthorizedRequest(
      null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BadRequest with DiagnosticableTreeMixin implements NetworkExceptions {
  const BadRequest();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.badRequest'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.badRequest()';
  }
}

/// @nodoc

class NotFound with DiagnosticableTreeMixin implements NetworkExceptions {
  const NotFound(this.reason);

  final String reason;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotFoundCopyWith<NotFound> get copyWith =>
      _$NotFoundCopyWithImpl<NotFound>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.notFound'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotFound &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.notFound(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $NotFoundCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) _then) =
      _$NotFoundCopyWithImpl;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$NotFoundCopyWithImpl<$Res> implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(this._self, this._then);

  final NotFound _self;
  final $Res Function(NotFound) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
  }) {
    return _then(NotFound(
      null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class MethodNotAllowed
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const MethodNotAllowed();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.methodNotAllowed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MethodNotAllowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.methodNotAllowed()';
  }
}

/// @nodoc

class NotAcceptable with DiagnosticableTreeMixin implements NetworkExceptions {
  const NotAcceptable();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.notAcceptable'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotAcceptable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.notAcceptable()';
  }
}

/// @nodoc

class RequestTimeout with DiagnosticableTreeMixin implements NetworkExceptions {
  const RequestTimeout();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'NetworkExceptions.timeout'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RequestTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.timeout()';
  }
}

/// @nodoc

class Conflict with DiagnosticableTreeMixin implements NetworkExceptions {
  const Conflict();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'NetworkExceptions.conflict'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Conflict);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.conflict()';
  }
}

/// @nodoc

class InternalServerError
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const InternalServerError(this.reason);

  final String reason;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InternalServerErrorCopyWith<InternalServerError> get copyWith =>
      _$InternalServerErrorCopyWithImpl<InternalServerError>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.internalServerError'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternalServerError &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.internalServerError(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $InternalServerErrorCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $InternalServerErrorCopyWith(
          InternalServerError value, $Res Function(InternalServerError) _then) =
      _$InternalServerErrorCopyWithImpl;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$InternalServerErrorCopyWithImpl<$Res>
    implements $InternalServerErrorCopyWith<$Res> {
  _$InternalServerErrorCopyWithImpl(this._self, this._then);

  final InternalServerError _self;
  final $Res Function(InternalServerError) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
  }) {
    return _then(InternalServerError(
      null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class NotImplemented with DiagnosticableTreeMixin implements NetworkExceptions {
  const NotImplemented();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.notImplemented'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotImplemented);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.notImplemented()';
  }
}

/// @nodoc

class ServiceUnavailable
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const ServiceUnavailable();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.serviceUnavailable'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServiceUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.serviceUnavailable()';
  }
}

/// @nodoc

class NoInternetConnection
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const NoInternetConnection();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'NetworkExceptions.noInternetConnection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.noInternetConnection()';
  }
}

/// @nodoc

class FormatException
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const FormatException();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.formatException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormatException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.formatException()';
  }
}

/// @nodoc

class UnableToProcess
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const UnableToProcess();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.unableToProcess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnableToProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unableToProcess()';
  }
}

/// @nodoc

class UnableToDecodeJson
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const UnableToDecodeJson(this.error);

  final dynamic error;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnableToDecodeJsonCopyWith<UnableToDecodeJson> get copyWith =>
      _$UnableToDecodeJsonCopyWithImpl<UnableToDecodeJson>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.unableToDecodeJson'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnableToDecodeJson &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unableToDecodeJson(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UnableToDecodeJsonCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnableToDecodeJsonCopyWith(
          UnableToDecodeJson value, $Res Function(UnableToDecodeJson) _then) =
      _$UnableToDecodeJsonCopyWithImpl;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class _$UnableToDecodeJsonCopyWithImpl<$Res>
    implements $UnableToDecodeJsonCopyWith<$Res> {
  _$UnableToDecodeJsonCopyWithImpl(this._self, this._then);

  final UnableToDecodeJson _self;
  final $Res Function(UnableToDecodeJson) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UnableToDecodeJson(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class DefaultError with DiagnosticableTreeMixin implements NetworkExceptions {
  const DefaultError(this.error);

  final String error;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.defaultError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DefaultError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.defaultError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $DefaultErrorCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) _then) =
      _$DefaultErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res> implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._self, this._then);

  final DefaultError _self;
  final $Res Function(DefaultError) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(DefaultError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UnexpectedError
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const UnexpectedError(this.error);

  final dynamic error;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnexpectedErrorCopyWith<UnexpectedError> get copyWith =>
      _$UnexpectedErrorCopyWithImpl<UnexpectedError>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.unexpectedError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnexpectedError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unexpectedError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UnexpectedErrorCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) _then) =
      _$UnexpectedErrorCopyWithImpl;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(this._self, this._then);

  final UnexpectedError _self;
  final $Res Function(UnexpectedError) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UnexpectedError(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class JsonDecodedException
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const JsonDecodedException(this.json, this.e);

  final dynamic json;
  final Exception e;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JsonDecodedExceptionCopyWith<JsonDecodedException> get copyWith =>
      _$JsonDecodedExceptionCopyWithImpl<JsonDecodedException>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.jsonDecodedException'))
      ..add(DiagnosticsProperty('json', json))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JsonDecodedException &&
            const DeepCollectionEquality().equals(other.json, json) &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(json), e);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.jsonDecodedException(json: $json, e: $e)';
  }
}

/// @nodoc
abstract mixin class $JsonDecodedExceptionCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $JsonDecodedExceptionCopyWith(JsonDecodedException value,
          $Res Function(JsonDecodedException) _then) =
      _$JsonDecodedExceptionCopyWithImpl;
  @useResult
  $Res call({dynamic json, Exception e});
}

/// @nodoc
class _$JsonDecodedExceptionCopyWithImpl<$Res>
    implements $JsonDecodedExceptionCopyWith<$Res> {
  _$JsonDecodedExceptionCopyWithImpl(this._self, this._then);

  final JsonDecodedException _self;
  final $Res Function(JsonDecodedException) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? json = freezed,
    Object? e = null,
  }) {
    return _then(JsonDecodedException(
      freezed == json
          ? _self.json
          : json // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == e
          ? _self.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class UnhandledException
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const UnhandledException(this.e);

  final Exception e;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnhandledExceptionCopyWith<UnhandledException> get copyWith =>
      _$UnhandledExceptionCopyWithImpl<UnhandledException>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.unhandledException'))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnhandledException &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unhandledException(e: $e)';
  }
}

/// @nodoc
abstract mixin class $UnhandledExceptionCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnhandledExceptionCopyWith(
          UnhandledException value, $Res Function(UnhandledException) _then) =
      _$UnhandledExceptionCopyWithImpl;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class _$UnhandledExceptionCopyWithImpl<$Res>
    implements $UnhandledExceptionCopyWith<$Res> {
  _$UnhandledExceptionCopyWithImpl(this._self, this._then);

  final UnhandledException _self;
  final $Res Function(UnhandledException) _then;

  /// Create a copy of NetworkExceptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? e = null,
  }) {
    return _then(UnhandledException(
      null == e
          ? _self.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

// dart format on
