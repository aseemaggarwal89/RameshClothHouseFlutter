part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated({
    required AuthenticateResponseDTO user,
  }) = Authenticated;

  const factory AuthenticationState.initial() = Initial;
}
