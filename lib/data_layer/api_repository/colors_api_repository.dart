import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';
import '../../domain_layer/domain_layer.dart';

class ColorInfoAPIRepository extends IColorInfoAPIRepository {
  final INetworkService networkManager;

  ColorInfoAPIRepository(this.networkManager);

  @override
  Future<ApiResult<GetColorInfoResponse>> getColorInfo() {
    final apiRequest = AppAPIRequest(
      const ApiRequestType.colorInfo(),
    );

    return networkManager.loadRequest(apiRequest);
  }
}
