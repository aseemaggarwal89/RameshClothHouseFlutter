import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/app_api_request.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';
import '../../domain_layer/domain_layer.dart';

class CategorgiesAPIRepository extends ICategoriesAPIRepository {
  final INetworkService networkManager;

  CategorgiesAPIRepository(this.networkManager);

  @override
  Future<ApiResult<GetCategoriesResponse>> getCategories() {
    final apiRequest = AppAPIRequest(
      const ApiRequestType.category(),
    );

    return networkManager.loadRequest(apiRequest);
  }
}
