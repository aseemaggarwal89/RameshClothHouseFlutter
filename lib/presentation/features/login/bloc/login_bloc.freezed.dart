// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent()';
  }
}

/// @nodoc
class $LoginEventCopyWith<$Res> {
  $LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}

/// @nodoc

class PasswordChanged implements LoginEvent {
  const PasswordChanged({required this.password});

  final String password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'LoginEvent.passwordchanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $PasswordChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) _then) =
      _$PasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._self, this._then);

  final PasswordChanged _self;
  final $Res Function(PasswordChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(PasswordChanged(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UsernameChanged implements LoginEvent {
  const UsernameChanged({required this.username});

  final String username;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsernameChanged &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @override
  String toString() {
    return 'LoginEvent.usernamechanges(username: $username)';
  }
}

/// @nodoc
abstract mixin class $UsernameChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) _then) =
      _$UsernameChangedCopyWithImpl;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(this._self, this._then);

  final UsernameChanged _self;
  final $Res Function(UsernameChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
  }) {
    return _then(UsernameChanged(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AuthenticateUser implements LoginEvent {
  const AuthenticateUser();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticateUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.loginuser()';
  }
}

/// @nodoc

class Logout implements LoginEvent {
  const Logout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }
}

/// @nodoc
mixin _$LoginState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState()';
  }
}

/// @nodoc
class $LoginStateCopyWith<$Res> {
  $LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}

/// @nodoc

class Initial implements LoginState {
  const Initial(
      {this.username = const Username.pure(),
      this.password = const Password.pure()});

  @JsonKey()
  final Username username;
  @JsonKey()
  final Password password;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initial &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'LoginState.initial(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class $InitialCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) _then) =
      _$InitialCopyWithImpl;
  @useResult
  $Res call({Username username, Password password});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(this._self, this._then);

  final Initial _self;
  final $Res Function(Initial) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(Initial(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class LoginValidateStatus implements LoginState {
  const LoginValidateStatus({required this.username, required this.password});

  final Username username;
  final Password password;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginValidateStatusCopyWith<LoginValidateStatus> get copyWith =>
      _$LoginValidateStatusCopyWithImpl<LoginValidateStatus>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginValidateStatus &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'LoginState.currentStatus(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginValidateStatusCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $LoginValidateStatusCopyWith(
          LoginValidateStatus value, $Res Function(LoginValidateStatus) _then) =
      _$LoginValidateStatusCopyWithImpl;
  @useResult
  $Res call({Username username, Password password});
}

/// @nodoc
class _$LoginValidateStatusCopyWithImpl<$Res>
    implements $LoginValidateStatusCopyWith<$Res> {
  _$LoginValidateStatusCopyWithImpl(this._self, this._then);

  final LoginValidateStatus _self;
  final $Res Function(LoginValidateStatus) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(LoginValidateStatus(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class Loginloading implements LoginState {
  const Loginloading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loginloading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.loading()';
  }
}

/// @nodoc

class LoginCompleted implements LoginState {
  const LoginCompleted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.authenticated()';
  }
}

/// @nodoc

class LoginFailed implements LoginState {
  const LoginFailed(this.error, this.errorMessage);

  final dynamic error;
  final String errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginFailedCopyWith<LoginFailed> get copyWith =>
      _$LoginFailedCopyWithImpl<LoginFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginFailed &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), errorMessage);

  @override
  String toString() {
    return 'LoginState.authenticatedFailed(error: $error, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LoginFailedCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $LoginFailedCopyWith(
          LoginFailed value, $Res Function(LoginFailed) _then) =
      _$LoginFailedCopyWithImpl;
  @useResult
  $Res call({dynamic error, String errorMessage});
}

/// @nodoc
class _$LoginFailedCopyWithImpl<$Res> implements $LoginFailedCopyWith<$Res> {
  _$LoginFailedCopyWithImpl(this._self, this._then);

  final LoginFailed _self;
  final $Res Function(LoginFailed) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
    Object? errorMessage = null,
  }) {
    return _then(LoginFailed(
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
