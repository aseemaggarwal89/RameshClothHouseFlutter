import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/app_api_request.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';
import 'package:rameshclothhouse/domain_layer/models/product_param_dto.dart';
import '../../domain_layer/domain_layer.dart';

class ProductAPIRepository extends IProductAPIRepository {
  final INetworkService networkManager;

  ProductAPIRepository(this.networkManager);

  @override
  Future<ApiResult<GetProductsResponse>> getProducts(
      [ProductParamDTO? param]) async {
    final apiRequest = AppAPIRequest(
      const ApiRequestType.product(),
      queryParam: param?.toJson(),
    );

    return networkManager.loadRequest(apiRequest);
  }

  @override
  Future<ApiResult<GetProductCountResponse>> getProductsCount(
      [ProductParamDTO? param]) {
    final apiRequest = AppAPIRequest(
      const ApiRequestType.product(
        path: '/count',
      ),
      queryParam: param?.toJson(),
    );

    return networkManager.loadRequest(apiRequest);
  }

  @override
  Future<ApiResult<GetProductDetailResponse>> getProductDetail(
      String productId) {
    final apiRequest = AppAPIRequest(
      ApiRequestType.product(
        path: '/$productId',
      ),
    );

    return networkManager.loadRequest(apiRequest);
  }

  // @override
  // Future<ApiResult<AddResponse>> addProductRequest(ProductDTO product) async {
  //   const request = ApiRequestType.product(HttpMethod.post);
  //   ApiResult<AddResponse> apiResult =
  //       await networkManager.loadRequest(request, body: product.toJson());

  //   return apiResult;
  // }

  // @override
  // Future<ApiResult<GetProductsResponse>> updateProductRequest(
  //     Product product) async {
  //   var request =
  //       ApiRequestType.product(HttpMethod.patch, urlSegment: product.id);
  //   ApiResult<GetProductsResponse> apiResult =
  //       await networkManager.loadRequest(request, body: product.toJson());
  //   return apiResult;
  // }

  // @override
  // Future<ApiResult<GetProductsResponse>> fetchProducts(
  //     [bool filterByUser = false]) async {
  //   final user = await authenticationRepository.loginUser;
  //   Map<String, dynamic> queryParams = {};
  //   if (filterByUser) {
  //     queryParams = {"orderBy": '"creatorId"', "equalTo": '"${user?.id}"'};
  //   }

  //   const request = ApiRequestType.product(HttpMethod.get);
  //   ApiResult<GetProductsResponse> apiResult =
  //       await networkManager.loadRequest(request, param: queryParams);
  //   return apiResult;
  // }

  // @override
  // Future<ApiResult<Map<String, dynamic>>> fetchUserFavourite() async {
  //   final user = await authenticationRepository.loginUser;

  //   var request = ApiRequestType.userFavorites(
  //     HttpMethod.get,
  //     urlSegment: user?.id,
  //   );
  //   ApiResult<Map<String, dynamic>> apiResult =
  //       await networkManager.loadRequest(request);
  //   return apiResult;
  // }

  // @override
  // Future<ApiResult<String>> deleteProductRequest(String productId) async {
  //   var request =
  //       ApiRequestType.product(HttpMethod.delete, urlSegment: productId);
  //   ApiResult<String> apiResult = await networkManager.loadRequest(request);
  //   return apiResult;
  // }

  // @override
  // Future<ApiResult<bool>> updateIsFavouriteRequest(
  //     bool isFavoruite, String productId) async {
  //   final user = await authenticationRepository.loginUser;
  //   var urlSegmeent = "${user?.id ?? ""}/$productId";
  //   var request =
  //       ApiRequestType.userFavorites(HttpMethod.put, urlSegment: urlSegmeent);
  //   ApiResult<bool> apiResult = await networkManager.loadRequest(
  //     request,
  //     body: isFavoruite,
  //   );
  //   return apiResult;
  // }
}
