import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/repositories/api_repository.dart';

abstract class IGetDetailUseCaseUseCases {
  Future<ProductDetailDTO> fetchProductDetailData(String productId);
}

class GetDetailUseCaseUseCases
    implements IGetDetailUseCaseUseCases, CacheInjection {
  final INetworkAPIRepository _networkAPIRepository;

  GetDetailUseCaseUseCases(
    this._networkAPIRepository,
  );

  @override
  Future<ProductDetailDTO> fetchProductDetailData(String productId) async {
    ApiResult<GetProductDetailResponse> result =
        await _networkAPIRepository.getDetailData(APIRequestNodeType.product, productId);
    return result.when(
        success: (success) {
          if (success != null &&
              success.status == "success" &&
              success.data != null) {
            return success.data!;
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
