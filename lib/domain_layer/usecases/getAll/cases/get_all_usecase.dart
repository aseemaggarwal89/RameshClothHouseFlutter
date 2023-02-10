import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/repositories/api_repository.dart';

abstract class IGetAllUseCaseUseCases {
  Future<List<BrandDTO>> fetchAllBrandData();
  Future<List<ColorInfo>> fetchAllColorInfoData();
  Future<List<CategoriesDTO>> fetchAllCategories();
}

class GetAllUseCase implements IGetAllUseCaseUseCases, CacheInjection {
  final INetworkAPIRepository _networkAPIRepository;

  GetAllUseCase(
    this._networkAPIRepository,
  );

  @override
  Future<List<CategoriesDTO>> fetchAllCategories() async {
    ApiResult<GetCategoriesResponse> result =
        await _networkAPIRepository.getDataAll(APIRequestNodeType.category);
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success.data ?? [];
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);

  }

  @override
  Future<List<ColorInfo>> fetchAllColorInfoData() async {
    ApiResult<GetColorInfoResponse> result =
        await _networkAPIRepository.getDataAll(APIRequestNodeType.colorInfo);
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success.data ?? [];
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }

  @override
  Future<List<BrandDTO>> fetchAllBrandData() async {
    ApiResult<GetBrandsResponse> result =
        await _networkAPIRepository.getDataAll(APIRequestNodeType.brand);
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success.data ?? [];
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
