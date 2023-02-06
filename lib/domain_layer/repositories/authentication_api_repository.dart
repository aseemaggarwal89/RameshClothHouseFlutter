import '../domain_layer.dart';

abstract class IAuthenticationAPIRepository {
  Future<ApiResult<AuthenticateResponseDTO>> loginUser(
      LoginUserDTO loginUserDTO) async {
    throw UnimplementedError();
  }

  Future<ApiResult<AuthenticateResponseDTO>> signupUser(
      SignupUserDTO userDTO) async {
    throw UnimplementedError();
  }
}
