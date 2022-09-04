import 'package:rameshclothhouse/domain_layer/utils/api_result.dart';
import 'package:rameshclothhouse/domain_layer/utils/constants.dart';
import '../../data_layer/data_layer.dart';

abstract class INetworkService {
  Future<ApiResult<T>> loadRequest<T>(IHttpRequest request);
}

abstract class IHttpRequest {
  Future<String> get path;
  HttpMethod get method;
  Future<Map<String, String>> get headers;
  Map<String, dynamic> get parameters;
  dynamic get data;
  AppURLsType get baseUrlType;
  DataResponseType get responseType;
}
