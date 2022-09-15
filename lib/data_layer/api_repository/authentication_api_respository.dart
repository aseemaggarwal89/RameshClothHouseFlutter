import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/app_api_request.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';

import '../../domain_layer/domain_layer.dart';

class AuthenticationAPIRepository extends IAuthenticationAPIRepository {
  final INetworkService networkManager;

  AuthenticationAPIRepository(this.networkManager);

  @override
  Future<ApiResult<SignupResponseDTO>> signup(
      String email, String password, String urlSegment) async {
    final SignupDTO signupDTO =
        SignupDTO(password: password, email: email, returnSecureToken: true);
    final apiRequest = AppAPIRequest(ApiRequestType.auth(path: urlSegment),
        queryParam: {"key": "AIzaSyCzBkPrYH0HtvKNVhaVQVBZFfscWKnGyIQ"},
        body: signupDTO.toJson());

    return networkManager.loadRequest(apiRequest);
  }
}
