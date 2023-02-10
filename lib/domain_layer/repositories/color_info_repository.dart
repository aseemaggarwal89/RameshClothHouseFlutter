import 'package:rameshclothhouse/domain_layer/utils/api_result.dart';

import '../models/get_colorinfo_response.dart';

abstract class IColorInfoAPIRepository {
    Future<ApiResult<GetColorInfoResponse>> getColorInfo();
}
