import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/presentation/config/storage.dart';

import '../../../domain_layer/domain_layer.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>
    implements PostDataUseCaseInjection {
  AuthenticateResponseDTO? authenticateResponseDTO;

  AuthenticationBloc() : super(const AuthenticationState.initial()) {
    on<AppStarted>(_appStarted);
    on<UserLogout>(_onLogoutRequested);
    on<UserLoggedIn>(_userLogin);
  }

  Future<void> _appStarted(
      AppStarted event, Emitter<AuthenticationState> emit) async {
    var user = await Storage().loginUserId;
    AuthenticateResponseDTO? authenticateUser = user != null
        ? await getPostDataUseCase.authenticateUser(loginUserDTO: user)
        : null;

    if (authenticateUser != null) {
      emit(AuthenticationState.authenticated(user: authenticateUser));
    } else {
      emit(const AuthenticationState.initial());
    }
  }

  void _userLogin(UserLoggedIn event, Emitter<AuthenticationState> emit) async {
    authenticateResponseDTO = event.authenticateResponseDTO;
    if (authenticateResponseDTO != null) {
      Storage().saveUser(event.userDTO);
      emit(AuthenticationState.authenticated(user: authenticateResponseDTO!));
    } else {
      emit(const AuthenticationState.initial());
    }
  }

  bool isUserAdmin() {
    if (authenticateResponseDTO != null) {
      return authenticateResponseDTO!.user.role == 'admin';
    }

    return false;
  }

  void _onLogoutRequested(
    UserLogout event,
    Emitter<AuthenticationState> emit,
  ) async {
    Storage().removeSavedUser();
    emit(const AuthenticationState.initial());
  }

  void dispose() {}
}
