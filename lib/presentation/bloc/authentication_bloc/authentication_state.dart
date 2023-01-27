part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final UserDTO? user;

  const AuthenticationState.state({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  const AuthenticationState.uninitialized() : this.state();

  const AuthenticationState.authenticated(UserDTO user)
      : this.state(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this.state(status: AuthenticationStatus.unauthenticated);

  const AuthenticationState(this.status, this.user);

  @override
  List<Object> get props => [user!, status];
}
