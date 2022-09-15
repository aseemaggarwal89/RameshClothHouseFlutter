import 'package:rameshclothhouse/domain_layer/models/signup_response_dto.dart';
import 'package:rameshclothhouse/domain_layer/utils/api_result.dart';

abstract class IAuthenticationAPIRepository {
  Future<ApiResult<SignupResponseDTO>> signup(
      String email, String password, String urlSegment) async {
    throw UnimplementedError();
  }  
}
