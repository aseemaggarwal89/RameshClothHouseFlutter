import 'dart:convert';

import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/api_contants.dart';
import '../../../domain_layer/domain_layer.dart';
import 'app_api_request_type.dart';

class AppAPIRequest extends IHttpRequest {
  late final Map<String, dynamic>? queryParam;
  late final dynamic body;
  final ApiRequestType requestType;

  AppAPIRequest(
    this.requestType, {
    this.queryParam,
    this.body,
  });

  AppAPIRequest.withoutParam(this.requestType) {
    queryParam = null;
  }

  @override
  Future<String> get path async => requestType.urlPath;

  @override
  dynamic get data => body;

  Map<String, String> _defaultHeader() {
    return {'Content-Type': 'application/json'};
  }

  @override
  Future<Map<String, String>> get headers async {
    var defaultHeaders = _defaultHeader();

    if (requestType.isContentLengthHeaderRequired) {
      if (body != null) {
        String json = jsonEncode(body);
        List<int> bodyBytes = utf8.encode(json);
        defaultHeaders["Content-Length"] = '${bodyBytes.length}';
      }
    }

    var customHeaders = await requestType.customHeaders;
    defaultHeaders.addAll(requestType.accessTokenHeaders());
    defaultHeaders.addAll(customHeaders);

    return defaultHeaders;
  }

  @override
  Map<String, dynamic> get parameters {
    return queryParam ?? {};
  }

  @override
  AppURLsType get baseUrlType => requestType.baseUrlType;

  @override
  DataResponseType get responseType => requestType.responseType;

  @override
  HttpMethod get method => requestType.method;
}
