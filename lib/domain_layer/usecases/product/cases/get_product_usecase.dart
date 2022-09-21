import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/models/product_param_dto.dart';

abstract class IProductUseCases {
  Future<List<ProductDTO>> fetchAllProductsData();
  Future<List<ProductDTO>> fetchProductData(
      int page, int pageSize, List<FilterDTO>? filters);
}

class ProductsUseCase implements IProductUseCases {
  final IProductAPIRepository _productAPIDataRepository;
  // final IProductDataDBRepository _productDBRepository;

  ProductsUseCase(
    this._productAPIDataRepository,
    // this._productDBRepository,
  );

  @override
  Future<List<ProductDTO>> fetchAllProductsData() async {
    final result = await _productAPIDataRepository.getProducts();
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            if (success.results > 0) {
              // _productDBRepository.saveProducts(success.data!.products);
            }

            return success.products;
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }

  @override
  Future<List<ProductDTO>> fetchProductData(
    int page,
    int pageSize,
    List<FilterDTO>? filters,
  ) async {
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
      page: page.toString(),
      pageSize: pageSize.toString(),
      brandId: brandId,
      subCategoryId: categoryId,
    );

    final result = await _productAPIDataRepository.getProducts(param);

    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            if (success.results > 0) {
              // _productDBRepository.saveProducts(success.data!.products);
            }

            return success.products;
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
