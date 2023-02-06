import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';

import '../../domain_layer/domain_layer.dart';

class AuthenticationAPIRepository extends IAuthenticationAPIRepository {
  final INetworkService networkManager;

  AuthenticationAPIRepository(this.networkManager);

  @override
  Future<ApiResult<AuthenticateResponseDTO>> loginUser(
      LoginUserDTO loginUserDTO) async {
    final apiRequest = AppAPIRequest(const ApiRequestType.auth(path: '/login'),
        body: loginUserDTO.toJson());

    return networkManager.loadRequest(apiRequest);
  }

  @override
  Future<ApiResult<AuthenticateResponseDTO>> signupUser(
      SignupUserDTO userDTO) async {
    final apiRequest = AppAPIRequest(const ApiRequestType.auth(path: '/signup'),
        body: userDTO.toJson());

    return networkManager.loadRequest(apiRequest);
  }
}
