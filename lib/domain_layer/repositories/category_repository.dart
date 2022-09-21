import 'package:rameshclothhouse/domain_layer/utils/api_result.dart';

import '../models/get_categorgies_response.dart';

abstract class ICategoriesAPIRepository {
  Future<ApiResult<GetCategoriesResponse>> getCategories();
}
