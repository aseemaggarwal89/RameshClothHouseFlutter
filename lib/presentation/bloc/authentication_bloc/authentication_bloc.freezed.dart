// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userLogout,
    required TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)
        userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLogout value) userLogout,
    required TResult Function(UserLoggedIn value) userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$AppStartedCopyWith<$Res> {
  factory _$$AppStartedCopyWith(
          _$AppStarted value, $Res Function(_$AppStarted) then) =
      __$$AppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$AppStartedCopyWith<$Res> {
  __$$AppStartedCopyWithImpl(
      _$AppStarted _value, $Res Function(_$AppStarted) _then)
      : super(_value, (v) => _then(v as _$AppStarted));

  @override
  _$AppStarted get _value => super._value as _$AppStarted;
}

/// @nodoc

class _$AppStarted implements AppStarted {
  const _$AppStarted();

  @override
  String toString() {
    return 'AuthenticationEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userLogout,
    required TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)
        userLoggedIn,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLogout value) userLogout,
    required TResult Function(UserLoggedIn value) userLoggedIn,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class AppStarted implements AuthenticationEvent {
  const factory AppStarted() = _$AppStarted;
}

/// @nodoc
abstract class _$$UserLogoutCopyWith<$Res> {
  factory _$$UserLogoutCopyWith(
          _$UserLogout value, $Res Function(_$UserLogout) then) =
      __$$UserLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$UserLogoutCopyWith<$Res> {
  __$$UserLogoutCopyWithImpl(
      _$UserLogout _value, $Res Function(_$UserLogout) _then)
      : super(_value, (v) => _then(v as _$UserLogout));

  @override
  _$UserLogout get _value => super._value as _$UserLogout;
}

/// @nodoc

class _$UserLogout implements UserLogout {
  const _$UserLogout();

  @override
  String toString() {
    return 'AuthenticationEvent.userLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userLogout,
    required TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)
        userLoggedIn,
  }) {
    return userLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
  }) {
    return userLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLogout value) userLogout,
    required TResult Function(UserLoggedIn value) userLoggedIn,
  }) {
    return userLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
  }) {
    return userLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout(this);
    }
    return orElse();
  }
}

abstract class UserLogout implements AuthenticationEvent {
  const factory UserLogout() = _$UserLogout;
}

/// @nodoc
abstract class _$$UserLoggedInCopyWith<$Res> {
  factory _$$UserLoggedInCopyWith(
          _$UserLoggedIn value, $Res Function(_$UserLoggedIn) then) =
      __$$UserLoggedInCopyWithImpl<$Res>;
  $Res call(
      {AuthenticateResponseDTO authenticateResponseDTO, LoginUserDTO userDTO});
}

/// @nodoc
class __$$UserLoggedInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$UserLoggedInCopyWith<$Res> {
  __$$UserLoggedInCopyWithImpl(
      _$UserLoggedIn _value, $Res Function(_$UserLoggedIn) _then)
      : super(_value, (v) => _then(v as _$UserLoggedIn));

  @override
  _$UserLoggedIn get _value => super._value as _$UserLoggedIn;

  @override
  $Res call({
    Object? authenticateResponseDTO = freezed,
    Object? userDTO = freezed,
  }) {
    return _then(_$UserLoggedIn(
      authenticateResponseDTO: authenticateResponseDTO == freezed
          ? _value.authenticateResponseDTO
          : authenticateResponseDTO // ignore: cast_nullable_to_non_nullable
              as AuthenticateResponseDTO,
      userDTO: userDTO == freezed
          ? _value.userDTO
          : userDTO // ignore: cast_nullable_to_non_nullable
              as LoginUserDTO,
    ));
  }
}

/// @nodoc

class _$UserLoggedIn implements UserLoggedIn {
  const _$UserLoggedIn(
      {required this.authenticateResponseDTO, required this.userDTO});

  @override
  final AuthenticateResponseDTO authenticateResponseDTO;
  @override
  final LoginUserDTO userDTO;

  @override
  String toString() {
    return 'AuthenticationEvent.userLoggedIn(authenticateResponseDTO: $authenticateResponseDTO, userDTO: $userDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedIn &&
            const DeepCollectionEquality().equals(
                other.authenticateResponseDTO, authenticateResponseDTO) &&
            const DeepCollectionEquality().equals(other.userDTO, userDTO));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authenticateResponseDTO),
      const DeepCollectionEquality().hash(userDTO));

  @JsonKey(ignore: true)
  @override
  _$$UserLoggedInCopyWith<_$UserLoggedIn> get copyWith =>
      __$$UserLoggedInCopyWithImpl<_$UserLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function() userLogout,
    required TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)
        userLoggedIn,
  }) {
    return userLoggedIn(authenticateResponseDTO, userDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
  }) {
    return userLoggedIn?.call(authenticateResponseDTO, userDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function()? userLogout,
    TResult Function(AuthenticateResponseDTO authenticateResponseDTO,
            LoginUserDTO userDTO)?
        userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(authenticateResponseDTO, userDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLogout value) userLogout,
    required TResult Function(UserLoggedIn value) userLoggedIn,
  }) {
    return userLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
  }) {
    return userLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLogout value)? userLogout,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserLoggedIn implements AuthenticationEvent {
  const factory UserLoggedIn(
      {required final AuthenticateResponseDTO authenticateResponseDTO,
      required final LoginUserDTO userDTO}) = _$UserLoggedIn;

  AuthenticateResponseDTO get authenticateResponseDTO;
  LoginUserDTO get userDTO;
  @JsonKey(ignore: true)
  _$$UserLoggedInCopyWith<_$UserLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticateResponseDTO user) authenticated,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticateResponseDTO user)? authenticated,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticateResponseDTO user)? authenticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthenticateResponseDTO user});
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$Authenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthenticateResponseDTO,
    ));
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated({required this.user});

  @override
  final AuthenticateResponseDTO user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticateResponseDTO user) authenticated,
    required TResult Function() initial,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticateResponseDTO user)? authenticated,
    TResult Function()? initial,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticateResponseDTO user)? authenticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Initial value) initial,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Initial value)? initial,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated({required final AuthenticateResponseDTO user}) =
      _$Authenticated;

  AuthenticateResponseDTO get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.initial()';
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
    required TResult Function(AuthenticateResponseDTO user) authenticated,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticateResponseDTO user)? authenticated,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticateResponseDTO user)? authenticated,
    TResult Function()? initial,
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
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationState {
  const factory Initial() = _$Initial;
}
