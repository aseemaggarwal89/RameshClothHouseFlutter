import '../../../domain_layer.dart';

abstract class IUserUseCases {
  Future<AuthenticateResponseDTO?> authenticateUser({
    required LoginUserDTO loginUserDTO,
  }) async {
    throw UnimplementedError();
  }

  Future<AuthenticateResponseDTO?> signup(SignupUserDTO signupUserDTO) async {
    throw UnimplementedError();
  }

  void logOut() async {
    throw UnimplementedError();
  }
}

class UserUseCase implements IUserUseCases {
  final IAuthenticationAPIRepository _userAPIRepository;

  UserUseCase(
    this._userAPIRepository,
  );

  @override
  Future<AuthenticateResponseDTO?> authenticateUser(
      {required LoginUserDTO loginUserDTO}) async {
    final result = await _userAPIRepository.loginUser(loginUserDTO);
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success;
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }

  @override
  void logOut() {
    // TODO: implement logOut
  }

  @override
  Future<AuthenticateResponseDTO?> signup(SignupUserDTO signupUserDTO) async {
    final result = await _userAPIRepository.signupUser(signupUserDTO);
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success;
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
