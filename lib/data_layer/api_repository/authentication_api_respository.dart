// import 'package:rameshclothhouse/models/signup_dto.dart';

// import '../../domain_layer/domain_layer.dart';
// import '../../models/signup_response_dto.dart';

// abstract class IAuthenticationAPIRepository {
//   Future<ApiResult<SignupResponseDTO>> signup(
//       String email, String password, String urlSegment) async {
//     throw UnimplementedError();
//   }
// }

// abstract class AuthenticationAPIRepositoryInjection {}

// extension AuthenticationAPIRepositoryInjectionExtension
//     on AuthenticationAPIRepositoryInjection {
//   IAuthenticationAPIRepository get authenticationApiRepository {
//     return getIt<IAuthenticationAPIRepository>();
//   }
// }

// class AuthenticationAPIRepository extends IAuthenticationAPIRepository
//     implements NetworkManagerInjection {
//   @override
//   Future<ApiResult<SignupResponseDTO>> signup(
//       String email, String password, String urlSegment) async {
//     final SignupDTO signupDTO =
//         SignupDTO(password: password, email: email, returnSecureToken: true);
//     var request = ApiRequestType.auth(
//         requestType: AppRequestType.auth, urlSegment: urlSegment);
//     ApiResult<SignupResponseDTO> apiResult = await networkManager
//         .loadFirebaseRequest(request,
//             body: signupDTO.toJson(),
//             param: {"key": "AIzaSyCzBkPrYH0HtvKNVhaVQVBZFfscWKnGyIQ"});

//     return apiResult;
//   }
// }
