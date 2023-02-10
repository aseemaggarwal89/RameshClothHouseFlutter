import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/models/product_param_dto.dart';

abstract class IProductUseCases {
  Future<int> fetchProductDataCount(List<FilterDTO>? filters);
  Future<ProductDetailDTO> fetchProductDetailData(String productId);
}

class ProductsUseCase implements IProductUseCases, CacheInjection {
  final IProductAPIRepository _productAPIDataRepository;
  // final IProductDataDBRepository _productDBRepository;

  ProductsUseCase(
    this._productAPIDataRepository,
    // this._productDBRepository,
  );

  @override
  Future<ProductDetailDTO> fetchProductDetailData(String productId) async {
    final result = await _productAPIDataRepository.getProductDetail(productId);
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

  @override
  Future<int> fetchProductDataCount(List<FilterDTO>? filters) async {
    String? brandId;
    String? categoryId;

    if (filters != null && filters.isNotEmpty) {
      List<BrandDTO> brands = filters
          .where((element) => element.type == FilterType.brand)
          .map((e) => e as BrandDTO)
          .toList();
      if (brands.isNotEmpty) {
        brandId = brands.map((e) => e.uniqueId).join(',');
      }

      List<CategoriesDTO> categories = filters
          .where((element) => element.type == FilterType.category)
          .map((e) => e as CategoriesDTO)
          .toList();
      if (categories.isNotEmpty) {
        categoryId = categories.map((e) => e.uniqueId).join(',');
      }
    }

    ProductParamDTO param = ProductParamDTO(
      brandId: brandId,
      subCategoryId: categoryId,
    );

    final result = await _productAPIDataRepository.getProductsCount(param);
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success.count;
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
