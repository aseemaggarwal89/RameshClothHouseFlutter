import 'package:rameshclothhouse/domain_layer/models/get_brand_response.dart';
import 'package:rameshclothhouse/domain_layer/utils/api_result.dart';

import '../../data_layer/data_layer.dart';

abstract class IBrandAPIRepository {
  // Future<ApiResult<AddResponse>> addProductRequest(ProductDTO product) async {
  //   throw UnimplementedError();
  // }

  Future<ApiResult<GetBrandsResponse>> getBrands();

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
