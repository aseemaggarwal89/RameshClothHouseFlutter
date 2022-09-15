import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/models/product_param_dto.dart';

abstract class IProductUseCases {
  Future<ApiResult<List<ProductDTO>>> fetchProductsData(
      {ProductParamDTO? param});
}

class ProductsUseCase implements IProductUseCases {
  final IProductAPIRepository _productAPIDataRepository;
  // final IProductDataDBRepository _productDBRepository;

  ProductsUseCase(
    this._productAPIDataRepository,
    // this._productDBRepository,
  );

  @override
  Future<ApiResult<List<ProductDTO>>> fetchProductsData(
      {ProductParamDTO? param}) {
    return _productAPIDataRepository.getAllProducts(param).then((value) {
      return value.map(
          success: (success) {
            if (success.data != null && success.data!.status == "success") {
              if (success.data!.results > 0) {
                // _productDBRepository.saveProducts(success.data!.products);
              }

              return ApiResult.success(success.data!.products);
            }

            return const ApiResult.failure(
                NetworkExceptions.notFound("Data not available"));
          },
          failure: (failure) => ApiResult.failure(failure.error));
    });
  }
}
