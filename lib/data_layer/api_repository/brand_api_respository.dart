import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';
import '../../domain_layer/domain_layer.dart';

class BrandAPIRepository extends IBrandAPIRepository {
  final INetworkService networkManager;

  BrandAPIRepository(this.networkManager);

  @override
  Future<ApiResult<GetBrandsResponse>> getBrands() {
    final apiRequest = AppAPIRequest(
      const ApiRequestType.brand(),
    );

    return networkManager.loadRequest(apiRequest);
  }
}
