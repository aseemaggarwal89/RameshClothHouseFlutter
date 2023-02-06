import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rameshclothhouse/presentation/config/storage.dart';

import '../../../domain_layer/domain_layer.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>
    implements UserUseCaseInjection {
  AuthenticationBloc() : super(const AuthenticationState.uninitialized()) {
    on<AppStarted>(_appStarted);
    on<UserLogout>(_onLogoutRequested);
    on<UserLoggedIn>(_userLogin);
  }

  Future<void> _appStarted(
      AppStarted event, Emitter<AuthenticationState> emit) async {
    var user = await Storage().loginUserId;
    AuthenticateResponseDTO? authenticateUser = user != null
        ? await getUserDataUseCase.authenticateUser(loginUserDTO: user)
        : null;

    if (authenticateUser != null) {
      emit(AuthenticationState.authenticated(authenticateUser));
    } else {
      emit(const AuthenticationState.unauthenticated());
    }
  }

  void _userLogin(UserLoggedIn event, Emitter<AuthenticationState> emit) async {
    LoginUserDTO loginUserDTO =
        LoginUserDTO(password: event.password, email: event.email);

    final user =
        await getUserDataUseCase.authenticateUser(loginUserDTO: loginUserDTO);
    if (user != null) {
      Storage().saveUser(loginUserDTO);
      emit(AuthenticationState.authenticated(user));
    } else {
      emit(const AuthenticationState.unauthenticated());
    }
  }

  void _onLogoutRequested(
    UserLogout event,
    Emitter<AuthenticationState> emit,
  ) async {
    getUserDataUseCase.logOut();
    emit(const AuthenticationState.unauthenticated());
  }

  void dispose() {
    print("AuthenticationBloc dispose");
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
