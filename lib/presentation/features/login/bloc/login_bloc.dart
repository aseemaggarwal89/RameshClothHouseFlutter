// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:rameshclothhouse/presentation/features/login/view_model.dart';

import '../../../../domain_layer/domain_layer.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>
    implements PostDataUseCaseInjection {
  bool status = false;
  final AuthenticationBloc _authenticationBloc;
  Username _username = const Username.pure();
  Password _password = const Password.pure();

  LoginBloc(this._authenticationBloc) : super(const Initial()) {
    on<PasswordChanged>(_onPasswordChanged);
    on<UsernameChanged>(_onUserNameChanged);
    on<AuthenticateUser>(_onSubmitted);
    on<Logout>(_onLogout);
  }

  void _onLogout(
    Logout event,
    Emitter<LoginState> emit,
  ) {
    _username = const Username.pure();
    _password = const Password.pure();
    status = false;
    _authenticationBloc.add(const AuthenticationEvent.userLogout());
  }

  Username get username {
    return _username;
  }

  Password get password {
    return _password;
  }

  void _onUserNameChanged(UsernameChanged event, Emitter<LoginState> emit) {
    _username = Username.dirty(value: event.username);
    status = Formz.validate([_password, _username]);
    emit(LoginState.currentStatus(
      username: _username,
      password: _password,
    ));
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    _password = Password.dirty(value: event.password);
    status = Formz.validate([_password, _username]);
    emit(LoginState.currentStatus(
      username: _username,
      password: _password,
    ));
  }

  void _onSubmitted(
    AuthenticateUser event,
    Emitter<LoginState> emit,
  ) async {
    _password = Password.dirty(value: _password.value);
    _username = Username.dirty(value:_username.value);
    status = Formz.validate([_password, _username]);
    emit(LoginState.currentStatus(
      username: _username,
      password: _password,
    ));

    if (status) {
      emit(const LoginState.loading());
      try {
        final result = await getPostDataUseCase.authenticateUser(
            loginUserDTO: LoginUserDTO(
          password: _password.value,
          email: _username.value,
        ));
        emit(const LoginState.authenticated());
        _authenticationBloc.add(AuthenticationEvent.userLoggedIn(
            authenticateResponseDTO: result!,
            userDTO: LoginUserDTO(
                password: _password.value, email: _username.value)));
      } on NetworkExceptions catch (failure) {
        emit(LoginState.authenticatedFailed(
            failure, NetworkExceptions.getErrorMessage(failure)));
      } on Exception catch (failure) {
        emit(LoginState.authenticatedFailed(failure, failure.toString()));
      }
    }
  }
}
