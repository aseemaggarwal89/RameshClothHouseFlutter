// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordchanged,
    required TResult Function(String username) usernamechanges,
    required TResult Function() loginuser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(UsernameChanged value) usernamechanges,
    required TResult Function(AuthenticateUser value) loginuser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$PasswordChanged(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordchanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordchanged,
    required TResult Function(String username) usernamechanges,
    required TResult Function() loginuser,
  }) {
    return passwordchanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
  }) {
    return passwordchanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
    required TResult orElse(),
  }) {
    if (passwordchanged != null) {
      return passwordchanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(UsernameChanged value) usernamechanges,
    required TResult Function(AuthenticateUser value) loginuser,
  }) {
    return passwordchanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
  }) {
    return passwordchanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
    required TResult orElse(),
  }) {
    if (passwordchanged != null) {
      return passwordchanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged({required final String password}) =
      _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedCopyWith<$Res> {
  factory _$$UsernameChangedCopyWith(
          _$UsernameChanged value, $Res Function(_$UsernameChanged) then) =
      __$$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$UsernameChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$UsernameChangedCopyWith<$Res> {
  __$$UsernameChangedCopyWithImpl(
      _$UsernameChanged _value, $Res Function(_$UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$UsernameChanged));

  @override
  _$UsernameChanged get _value => super._value as _$UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$UsernameChanged(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.usernamechanges(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      __$$UsernameChangedCopyWithImpl<_$UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordchanged,
    required TResult Function(String username) usernamechanges,
    required TResult Function() loginuser,
  }) {
    return usernamechanges(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
  }) {
    return usernamechanges?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
    required TResult orElse(),
  }) {
    if (usernamechanges != null) {
      return usernamechanges(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(UsernameChanged value) usernamechanges,
    required TResult Function(AuthenticateUser value) loginuser,
  }) {
    return usernamechanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
  }) {
    return usernamechanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
    required TResult orElse(),
  }) {
    if (usernamechanges != null) {
      return usernamechanges(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements LoginEvent {
  const factory UsernameChanged({required final String username}) =
      _$UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticateUserCopyWith<$Res> {
  factory _$$AuthenticateUserCopyWith(
          _$AuthenticateUser value, $Res Function(_$AuthenticateUser) then) =
      __$$AuthenticateUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateUserCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$AuthenticateUserCopyWith<$Res> {
  __$$AuthenticateUserCopyWithImpl(
      _$AuthenticateUser _value, $Res Function(_$AuthenticateUser) _then)
      : super(_value, (v) => _then(v as _$AuthenticateUser));

  @override
  _$AuthenticateUser get _value => super._value as _$AuthenticateUser;
}

/// @nodoc

class _$AuthenticateUser implements AuthenticateUser {
  const _$AuthenticateUser();

  @override
  String toString() {
    return 'LoginEvent.loginuser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordchanged,
    required TResult Function(String username) usernamechanges,
    required TResult Function() loginuser,
  }) {
    return loginuser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
  }) {
    return loginuser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordchanged,
    TResult Function(String username)? usernamechanges,
    TResult Function()? loginuser,
    required TResult orElse(),
  }) {
    if (loginuser != null) {
      return loginuser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(UsernameChanged value) usernamechanges,
    required TResult Function(AuthenticateUser value) loginuser,
  }) {
    return loginuser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
  }) {
    return loginuser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(UsernameChanged value)? usernamechanges,
    TResult Function(AuthenticateUser value)? loginuser,
    required TResult orElse(),
  }) {
    if (loginuser != null) {
      return loginuser(this);
    }
    return orElse();
  }
}

abstract class AuthenticateUser implements LoginEvent {
  const factory AuthenticateUser() = _$AuthenticateUser;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username username, Password password) initial,
    required TResult Function(Username username, Password password)
        currentStatus,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(dynamic error, String errorMessage)
        authenticatedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginValidateStatus value) currentStatus,
    required TResult Function(Loginloading value) loading,
    required TResult Function(LoginCompleted value) authenticated,
    required TResult Function(LoginFailed value) authenticatedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  $Res call({Username username, Password password});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$Initial(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(
      {this.username = const Username.pure(),
      this.password = const Password.pure()});

  @override
  @JsonKey()
  final Username username;
  @override
  @JsonKey()
  final Password password;

  @override
  String toString() {
    return 'LoginState.initial(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username username, Password password) initial,
    required TResult Function(Username username, Password password)
        currentStatus,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(dynamic error, String errorMessage)
        authenticatedFailed,
  }) {
    return initial(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
  }) {
    return initial?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginValidateStatus value) currentStatus,
    required TResult Function(Loginloading value) loading,
    required TResult Function(LoginCompleted value) authenticated,
    required TResult Function(LoginFailed value) authenticatedFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial({final Username username, final Password password}) =
      _$Initial;

  Username get username;
  Password get password;
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginValidateStatusCopyWith<$Res> {
  factory _$$LoginValidateStatusCopyWith(_$LoginValidateStatus value,
          $Res Function(_$LoginValidateStatus) then) =
      __$$LoginValidateStatusCopyWithImpl<$Res>;
  $Res call({Username username, Password password});
}

/// @nodoc
class __$$LoginValidateStatusCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginValidateStatusCopyWith<$Res> {
  __$$LoginValidateStatusCopyWithImpl(
      _$LoginValidateStatus _value, $Res Function(_$LoginValidateStatus) _then)
      : super(_value, (v) => _then(v as _$LoginValidateStatus));

  @override
  _$LoginValidateStatus get _value => super._value as _$LoginValidateStatus;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginValidateStatus(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$LoginValidateStatus implements LoginValidateStatus {
  const _$LoginValidateStatus({required this.username, required this.password});

  @override
  final Username username;
  @override
  final Password password;

  @override
  String toString() {
    return 'LoginState.currentStatus(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginValidateStatus &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$LoginValidateStatusCopyWith<_$LoginValidateStatus> get copyWith =>
      __$$LoginValidateStatusCopyWithImpl<_$LoginValidateStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username username, Password password) initial,
    required TResult Function(Username username, Password password)
        currentStatus,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(dynamic error, String errorMessage)
        authenticatedFailed,
  }) {
    return currentStatus(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
  }) {
    return currentStatus?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (currentStatus != null) {
      return currentStatus(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginValidateStatus value) currentStatus,
    required TResult Function(Loginloading value) loading,
    required TResult Function(LoginCompleted value) authenticated,
    required TResult Function(LoginFailed value) authenticatedFailed,
  }) {
    return currentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
  }) {
    return currentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (currentStatus != null) {
      return currentStatus(this);
    }
    return orElse();
  }
}

abstract class LoginValidateStatus implements LoginState {
  const factory LoginValidateStatus(
      {required final Username username,
      required final Password password}) = _$LoginValidateStatus;

  Username get username;
  Password get password;
  @JsonKey(ignore: true)
  _$$LoginValidateStatusCopyWith<_$LoginValidateStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginloadingCopyWith<$Res> {
  factory _$$LoginloadingCopyWith(
          _$Loginloading value, $Res Function(_$Loginloading) then) =
      __$$LoginloadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginloadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginloadingCopyWith<$Res> {
  __$$LoginloadingCopyWithImpl(
      _$Loginloading _value, $Res Function(_$Loginloading) _then)
      : super(_value, (v) => _then(v as _$Loginloading));

  @override
  _$Loginloading get _value => super._value as _$Loginloading;
}

/// @nodoc

class _$Loginloading implements Loginloading {
  const _$Loginloading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loginloading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username username, Password password) initial,
    required TResult Function(Username username, Password password)
        currentStatus,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(dynamic error, String errorMessage)
        authenticatedFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
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
    required TResult Function(LoginValidateStatus value) currentStatus,
    required TResult Function(Loginloading value) loading,
    required TResult Function(LoginCompleted value) authenticated,
    required TResult Function(LoginFailed value) authenticatedFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loginloading implements LoginState {
  const factory Loginloading() = _$Loginloading;
}

/// @nodoc
abstract class _$$LoginCompletedCopyWith<$Res> {
  factory _$$LoginCompletedCopyWith(
          _$LoginCompleted value, $Res Function(_$LoginCompleted) then) =
      __$$LoginCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCompletedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginCompletedCopyWith<$Res> {
  __$$LoginCompletedCopyWithImpl(
      _$LoginCompleted _value, $Res Function(_$LoginCompleted) _then)
      : super(_value, (v) => _then(v as _$LoginCompleted));

  @override
  _$LoginCompleted get _value => super._value as _$LoginCompleted;
}

/// @nodoc

class _$LoginCompleted implements LoginCompleted {
  const _$LoginCompleted();

  @override
  String toString() {
    return 'LoginState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username username, Password password) initial,
    required TResult Function(Username username, Password password)
        currentStatus,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(dynamic error, String errorMessage)
        authenticatedFailed,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginValidateStatus value) currentStatus,
    required TResult Function(Loginloading value) loading,
    required TResult Function(LoginCompleted value) authenticated,
    required TResult Function(LoginFailed value) authenticatedFailed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class LoginCompleted implements LoginState {
  const factory LoginCompleted() = _$LoginCompleted;
}

/// @nodoc
abstract class _$$LoginFailedCopyWith<$Res> {
  factory _$$LoginFailedCopyWith(
          _$LoginFailed value, $Res Function(_$LoginFailed) then) =
      __$$LoginFailedCopyWithImpl<$Res>;
  $Res call({dynamic error, String errorMessage});
}

/// @nodoc
class __$$LoginFailedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginFailedCopyWith<$Res> {
  __$$LoginFailedCopyWithImpl(
      _$LoginFailed _value, $Res Function(_$LoginFailed) _then)
      : super(_value, (v) => _then(v as _$LoginFailed));

  @override
  _$LoginFailed get _value => super._value as _$LoginFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LoginFailed(
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

class _$LoginFailed implements LoginFailed {
  const _$LoginFailed(this.error, this.errorMessage);

  @override
  final dynamic error;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoginState.authenticatedFailed(error: $error, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailed &&
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
  _$$LoginFailedCopyWith<_$LoginFailed> get copyWith =>
      __$$LoginFailedCopyWithImpl<_$LoginFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Username username, Password password) initial,
    required TResult Function(Username username, Password password)
        currentStatus,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(dynamic error, String errorMessage)
        authenticatedFailed,
  }) {
    return authenticatedFailed(error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
  }) {
    return authenticatedFailed?.call(error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Username username, Password password)? initial,
    TResult Function(Username username, Password password)? currentStatus,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(dynamic error, String errorMessage)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (authenticatedFailed != null) {
      return authenticatedFailed(error, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoginValidateStatus value) currentStatus,
    required TResult Function(Loginloading value) loading,
    required TResult Function(LoginCompleted value) authenticated,
    required TResult Function(LoginFailed value) authenticatedFailed,
  }) {
    return authenticatedFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
  }) {
    return authenticatedFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoginValidateStatus value)? currentStatus,
    TResult Function(Loginloading value)? loading,
    TResult Function(LoginCompleted value)? authenticated,
    TResult Function(LoginFailed value)? authenticatedFailed,
    required TResult orElse(),
  }) {
    if (authenticatedFailed != null) {
      return authenticatedFailed(this);
    }
    return orElse();
  }
}

abstract class LoginFailed implements LoginState {
  const factory LoginFailed(final dynamic error, final String errorMessage) =
      _$LoginFailed;

  dynamic get error;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$LoginFailedCopyWith<_$LoginFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
