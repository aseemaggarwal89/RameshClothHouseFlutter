// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationEvent()';
  }
}

/// @nodoc
class $AuthenticationEventCopyWith<$Res> {
  $AuthenticationEventCopyWith(
      AuthenticationEvent _, $Res Function(AuthenticationEvent) __);
}

/// @nodoc

class AppStarted implements AuthenticationEvent {
  const AppStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationEvent.appStarted()';
  }
}

/// @nodoc

class UserLogout implements AuthenticationEvent {
  const UserLogout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationEvent.userLogout()';
  }
}

/// @nodoc

class UserLoggedIn implements AuthenticationEvent {
  const UserLoggedIn(
      {required this.authenticateResponseDTO, required this.userDTO});

  final AuthenticateResponseDTO authenticateResponseDTO;
  final LoginUserDTO userDTO;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLoggedInCopyWith<UserLoggedIn> get copyWith =>
      _$UserLoggedInCopyWithImpl<UserLoggedIn>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoggedIn &&
            (identical(
                    other.authenticateResponseDTO, authenticateResponseDTO) ||
                other.authenticateResponseDTO == authenticateResponseDTO) &&
            (identical(other.userDTO, userDTO) || other.userDTO == userDTO));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authenticateResponseDTO, userDTO);

  @override
  String toString() {
    return 'AuthenticationEvent.userLoggedIn(authenticateResponseDTO: $authenticateResponseDTO, userDTO: $userDTO)';
  }
}

/// @nodoc
abstract mixin class $UserLoggedInCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory $UserLoggedInCopyWith(
          UserLoggedIn value, $Res Function(UserLoggedIn) _then) =
      _$UserLoggedInCopyWithImpl;
  @useResult
  $Res call(
      {AuthenticateResponseDTO authenticateResponseDTO, LoginUserDTO userDTO});
}

/// @nodoc
class _$UserLoggedInCopyWithImpl<$Res> implements $UserLoggedInCopyWith<$Res> {
  _$UserLoggedInCopyWithImpl(this._self, this._then);

  final UserLoggedIn _self;
  final $Res Function(UserLoggedIn) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authenticateResponseDTO = null,
    Object? userDTO = null,
  }) {
    return _then(UserLoggedIn(
      authenticateResponseDTO: null == authenticateResponseDTO
          ? _self.authenticateResponseDTO
          : authenticateResponseDTO // ignore: cast_nullable_to_non_nullable
              as AuthenticateResponseDTO,
      userDTO: null == userDTO
          ? _self.userDTO
          : userDTO // ignore: cast_nullable_to_non_nullable
              as LoginUserDTO,
    ));
  }
}

/// @nodoc
mixin _$AuthenticationState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState()';
  }
}

/// @nodoc
class $AuthenticationStateCopyWith<$Res> {
  $AuthenticationStateCopyWith(
      AuthenticationState _, $Res Function(AuthenticationState) __);
}

/// @nodoc

class Authenticated implements AuthenticationState {
  const Authenticated({required this.user});

  final AuthenticateResponseDTO user;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) _then) =
      _$AuthenticatedCopyWithImpl;
  @useResult
  $Res call({AuthenticateResponseDTO user});
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(this._self, this._then);

  final Authenticated _self;
  final $Res Function(Authenticated) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(Authenticated(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthenticateResponseDTO,
    ));
  }
}

/// @nodoc

class Initial implements AuthenticationState {
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
    return 'AuthenticationState.initial()';
  }
}

// dart format on
