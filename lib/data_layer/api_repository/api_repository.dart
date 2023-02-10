import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';
import 'package:rameshclothhouse/domain_layer/repositories/api_repository.dart';
import '../../domain_layer/domain_layer.dart';

class NetworkAPIRepository extends INetworkAPIRepository {
  final INetworkService networkManager;

  NetworkAPIRepository(this.networkManager);

  @override
  Future<ApiResult<T>> getDataAll<T>(APIRequestNodeType nodeType,
      {Map<String, dynamic>? param = const {}}) {
    final apiRequest = AppAPIRequest(
      ApiRequestType.getAll(nodeType: nodeType),
      queryParam: param,
    );

    return networkManager.loadRequest(apiRequest);
  }
}
