part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class UserLogout extends AuthenticationEvent {}

class UserLoggedIn extends AuthenticationEvent {
  final String email;
  final String password;

  const UserLoggedIn(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class LoggedOut extends AuthenticationEvent {}
