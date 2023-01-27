import 'package:rameshclothhouse/domain_layer/models/product_param_dto.dart';

import '../domain_layer.dart';

abstract class IProductAPIRepository {
  // Future<ApiResult<AddResponse>> addProductRequest(ProductDTO product) async {
  //   throw UnimplementedError();
  // }

  Future<ApiResult<GetProductsResponse>> getProducts([ProductParamDTO? param]);

  Future<ApiResult<GetProductCountResponse>> getProductsCount(
      [ProductParamDTO? param]);
  Future<ApiResult<GetProductDetailResponse>> getProductDetail(String productId);

  // Future<ApiResult<GetProductsResponse>> updateProductRequest(
  //     Product product) async {
  //   throw UnimplementedError();
  // }

  // Future<ApiResult<String>> deleteProductRequest(String productId) async {
  //   throw UnimplementedError();
  // }

  // Future<ApiResult<bool>> updateIsFavouriteRequest(
  //     bool isFavoruite, String productId) async {
  //   throw UnimplementedError();
  // }

  // Future<ApiResult<Map<String, dynamic>>> fetchUserFavourite() async {
  //   throw UnimplementedError();
  // }
}

abstract class IProductDataDBRepository {
  ProductDTO? fetchproduct(String productId);
  List<ProductDTO> fetchProducts();
  Future<int> saveProduct(ProductDTO product);
  Future<List<int>> saveProducts(List<ProductDTO> products);
}
