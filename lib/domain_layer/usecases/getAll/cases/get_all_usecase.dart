import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/domain_layer/repositories/api_repository.dart';

import '../../../models/product_param_dto.dart';

abstract class IGetAllUseCaseUseCases {
  Future<List<BrandDTO>> fetchAllBrandData();
  Future<List<ColorInfo>> fetchAllColorInfoData();
  Future<List<CategoriesDTO>> fetchAllCategories();
  Future<List<ProductDTO>> fetchAllProductsData();
  Future<List<ProductDTO>> fetchProductData(
      int page, int pageSize, List<FilterDTO>? filters, SortBy? sortBy);
  Future<int> fetchProductDataCount(List<FilterDTO>? filters);
}

class GetAllUseCase implements IGetAllUseCaseUseCases {
  final INetworkAPIRepository _networkAPIRepository;

  GetAllUseCase(
    this._networkAPIRepository,
  );

  @override
  Future<List<ProductDTO>> fetchAllProductsData() async {
    ApiResult<GetProductsResponse> result =
        await _networkAPIRepository.getDataAll(APIRequestNodeType.product);
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            // if (success.results > 0) {
            //   homeDataCache.savedProductData(success.data);
            // }

            return success.data ?? [];
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }

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

  @override
  Future<List<ProductDTO>> fetchProductData(
    int page,
    int pageSize,
    List<FilterDTO>? filters,
    SortBy? sortBy,
  ) async {
    String? brandId;
    String? categoryId;
    String? sortById;

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
    if (sortBy != null) {
      sortById = sortBy.sortByUrlKey;
    }

    ProductParamDTO param = ProductParamDTO(
      page: page.toString(),
      pageSize: pageSize.toString(),
      brandId: brandId,
      subCategoryId: categoryId,
      sort: sortById,
    );

    ApiResult<GetProductsResponse> result =
        await _networkAPIRepository.getDataAll(
      APIRequestNodeType.product,
      param: param.toJson(),
    );

    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            if (success.results > 0) {
              // _productDBRepository.saveProducts(success.data!.products);
            }

            return success.data ?? [];
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

    final result =
        await _networkAPIRepository.getDataCount(param: param.toJson());
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
