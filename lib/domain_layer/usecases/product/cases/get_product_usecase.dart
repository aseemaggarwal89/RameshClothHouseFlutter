import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/models/product_param_dto.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc/filter_view_model.dart';

abstract class IProductUseCases {
  Future<List<ProductDTO>> fetchAllProductsData();
  Future<List<ProductDTO>> fetchProductData(
      int page, int pageSize, List<BrandDTO>? brands);
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
    List<BrandDTO>? brands,
  ) async {
    String? brandId;

    if (brands != null && brands.isNotEmpty) {
      brandId = brands.map((e) => e.uniqueId).join(',');
    }
    ProductParamDTO param = ProductParamDTO(
      page: page.toString(),
      pageSize: pageSize.toString(),
      brandId: brandId,
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
