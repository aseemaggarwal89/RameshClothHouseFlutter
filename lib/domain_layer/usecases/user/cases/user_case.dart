import 'package:rameshclothhouse/domain_layer/repositories/user_repository.dart';

import '../../../domain_layer.dart';
import '../../../models/authentication_status.dart';

abstract class IUserUseCases {
  Future<UserDTO?> authenticateUser({
    required String email,
    required String password,
  }) async {
    throw UnimplementedError();
  }

  Future<UserDTO?> loginUser(String userId) async {
    throw UnimplementedError();
  }

  void logOut() async {
    throw UnimplementedError();
  }
}

class UserUseCase implements IUserUseCases {
  final IUserDataDBRepository _userDBRepository;
  final IAuthenticationAPIRepository _userAPIRepository;

  UserUseCase(
    this._userDBRepository,
    this._userAPIRepository,
  );

  @override
  Future<UserDTO?> authenticateUser(
      {required String email, required String password}) {
    // TODO: implement authenticateUser
    throw UnimplementedError();
  }

  @override
  void logOut() {
    // TODO: implement logOut
  }

  @override
  // TODO: implement loginUser
  Future<UserDTO?> loginUser(String userId) async {
    throw UnimplementedError();
  }
  // Future<ApiResult<List<ProductDTO>>> fetchHomeFeedData(
  //     {ProductParamDTO? param}) {
  //   return _productAPIDataRepository.getAllProducts(param).then((value) {
  //     return value.map(
  //         success: (success) {
  //           if (success.data != null && success.data!.status == "success") {
  //             if (success.data!.results > 0) {
  //               _productDBRepository.saveProducts(success.data!.products);
  //             }

  //             return ApiResult.success(success.data!.products);
  //           }

  //           return const ApiResult.failure(
  //               NetworkExceptions.notFound("Data not available"));
  //         },
  //         failure: (failure) => ApiResult.failure(failure.error));
  //   });
  // }
}
