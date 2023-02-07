part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.passwordchanged({required String password}) =
      PasswordChanged;
  const factory LoginEvent.usernamechanges({required String username}) =
      UsernameChanged;
  const factory LoginEvent.loginuser() = AuthenticateUser;
  const factory LoginEvent.logout() = Logout;
}
