import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/repositories/api_repository.dart';

import '../../../models/product_param_dto.dart';

abstract class IPostDataUseCases {
  Future<AuthenticateResponseDTO?> authenticateUser(
      {required LoginUserDTO loginUserDTO});
  Future<AuthenticateResponseDTO?> signup(SignupUserDTO signupUserDTO);
}

class PostDataUseCase implements IPostDataUseCases {
  final INetworkAPIRepository _networkAPIRepository;

  PostDataUseCase(
    this._networkAPIRepository,
  );

  @override
  Future<AuthenticateResponseDTO?> authenticateUser(
      {required LoginUserDTO loginUserDTO}) async {
    ApiResult<AuthenticateResponseDTO> result = await _networkAPIRepository
        .postData(APIRequestNodeType.auth, loginUserDTO.toJson(),
            endpoint: '/login');
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
  Future<AuthenticateResponseDTO?> signup(SignupUserDTO signupUserDTO) async {
    ApiResult<AuthenticateResponseDTO> result =
        await _networkAPIRepository.postData(
      APIRequestNodeType.auth,
      signupUserDTO.toJson(),
      endpoint: '/signup',
    );
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
