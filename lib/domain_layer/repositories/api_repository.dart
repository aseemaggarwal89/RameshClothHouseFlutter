import '../domain_layer.dart';

abstract class INetworkAPIRepository {
  // Future<ApiResult<AddResponse>> addProductRequest(ProductDTO product) async {
  //   throw UnimplementedError();
  // }

  Future<ApiResult<GetProductCountResponse>> getDataCount(
      {Map<String, dynamic>? param = const {}});
  Future<ApiResult<T>> getDataAll<T>(APIRequestNodeType nodeType,
      {Map<String, dynamic>? param = const {}});
  Future<ApiResult<T>> getDetailData<T>(APIRequestNodeType nodeType, String id);
  // Future<ApiResult<GetProductCountResponse>> getProductsCount(
  //     [ProductParamDTO? param]);
  // Future<ApiResult<GetProductDetailResponse>> getProductDetail(
  //     String productId);

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
