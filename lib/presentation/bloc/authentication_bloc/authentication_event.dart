part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.appStarted() = AppStarted;
  const factory AuthenticationEvent.userLogout() = UserLogout;
  const factory AuthenticationEvent.userLoggedIn({
    required AuthenticateResponseDTO authenticateResponseDTO,
    required LoginUserDTO userDTO,
  }) = UserLoggedIn;
}
