part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  // FormzStatus status = FormzStatus.pure;
  const factory LoginState.initial({
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
  }) = Initial;

  const factory LoginState.currentStatus(
      {required Username username,
      required Password password}) = LoginValidateStatus;
  const factory LoginState.loading() = Loginloading;
  const factory LoginState.authenticated() = LoginCompleted;
  const factory LoginState.authenticatedFailed(
      dynamic error, String errorMessage) = LoginFailed;
}
