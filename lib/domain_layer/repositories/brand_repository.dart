import 'package:rameshclothhouse/domain_layer/models/get_brand_response.dart';
import 'package:rameshclothhouse/domain_layer/utils/api_result.dart';

import '../../data_layer/data_layer.dart';

abstract class IBrandAPIRepository {
  Future<ApiResult<GetBrandsResponse>> getBrands();
}
