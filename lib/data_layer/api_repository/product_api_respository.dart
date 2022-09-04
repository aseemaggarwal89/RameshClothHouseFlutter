// import 'package:rameshclothhouse/data_repository.dart/authentication_repository.dart';
// import 'package:rameshclothhouse/models/add_product_response.dart';
// import 'package:rameshclothhouse/models/product_dto.dart';
// import 'package:rameshclothhouse/networkLayer/appnetworkapi/app_api_request_type.dart';

// import '../../confirguration/app_configuration.dart';
// import '../../models/get_product_response.dart';
// import '../../providers/product.dart';
// import '../appnetworkapi/api_result.dart';

// abstract class IProductAPIRepository {
//   Future<ApiResult<AddResponse>> addProductRequest(ProductDTO product) async {
//     throw UnimplementedError();
//   }

//   Future<ApiResult<GetProductsResponse>> fetchProducts(
//       [bool filterByUser = false]) async {
//     throw UnimplementedError();
//   }

//   Future<ApiResult<GetProductsResponse>> updateProductRequest(
//       Product product) async {
//     throw UnimplementedError();
//   }

//   Future<ApiResult<String>> deleteProductRequest(String productId) async {
//     throw UnimplementedError();
//   }

//   Future<ApiResult<bool>> updateIsFavouriteRequest(
//       bool isFavoruite, String productId) async {
//     throw UnimplementedError();
//   }

//   Future<ApiResult<Map<String, dynamic>>> fetchUserFavourite() async {
//     throw UnimplementedError();
//   }
// }

// abstract class ProductAPIRepositoryInjection {}

// extension ProductAPIRepositoryInjectionExtension
//     on ProductAPIRepositoryInjection {
//   IProductAPIRepository get productApiRepository {
//     return getIt<IProductAPIRepository>();
//   }
// }

// class ProductAPIRepository extends IProductAPIRepository
//     implements NetworkManagerInjection, AuthenticationRepositoryInjection {
//   @override
//   Future<ApiResult<AddResponse>> addProductRequest(ProductDTO product) async {
//     const request = ApiRequestType.product(HttpMethod.post);
//     ApiResult<AddResponse> apiResult =
//         await networkManager.loadRequest(request, body: product.toJson());

//     return apiResult;
//   }

//   @override
//   Future<ApiResult<GetProductsResponse>> updateProductRequest(
//       Product product) async {
//     var request =
//         ApiRequestType.product(HttpMethod.patch, urlSegment: product.id);
//     ApiResult<GetProductsResponse> apiResult =
//         await networkManager.loadRequest(request, body: product.toJson());
//     return apiResult;
//   }

//   @override
//   Future<ApiResult<GetProductsResponse>> fetchProducts(
//       [bool filterByUser = false]) async {
//     final user = await authenticationRepository.loginUser;
//     Map<String, dynamic> queryParams = {};
//     if (filterByUser) {
//       queryParams = {"orderBy": '"creatorId"', "equalTo": '"${user?.id}"'};
//     }

//     const request = ApiRequestType.product(HttpMethod.get);
//     ApiResult<GetProductsResponse> apiResult =
//         await networkManager.loadRequest(request, param: queryParams);
//     return apiResult;
//   }

//   @override
//   Future<ApiResult<Map<String, dynamic>>> fetchUserFavourite() async {
//     final user = await authenticationRepository.loginUser;

//     var request = ApiRequestType.userFavorites(
//       HttpMethod.get,
//       urlSegment: user?.id,
//     );
//     ApiResult<Map<String, dynamic>> apiResult =
//         await networkManager.loadRequest(request);
//     return apiResult;
//   }

//   @override
//   Future<ApiResult<String>> deleteProductRequest(String productId) async {
//     var request =
//         ApiRequestType.product(HttpMethod.delete, urlSegment: productId);
//     ApiResult<String> apiResult = await networkManager.loadRequest(request);
//     return apiResult;
//   }

//   @override
//   Future<ApiResult<bool>> updateIsFavouriteRequest(
//       bool isFavoruite, String productId) async {
//     final user = await authenticationRepository.loginUser;
//     var urlSegmeent = "${user?.id ?? ""}/$productId";
//     var request =
//         ApiRequestType.userFavorites(HttpMethod.put, urlSegment: urlSegmeent);
//     ApiResult<bool> apiResult = await networkManager.loadRequest(
//       request,
//       body: isFavoruite,
//     );
//     return apiResult;
//   }
// }
