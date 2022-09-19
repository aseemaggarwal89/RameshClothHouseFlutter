import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/api_contants.dart';
import '../../../domain_layer/domain_layer.dart';
import '../../data_source/remote/app_api_request_type.dart';

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

  // @override
  // HttpMethod get method => requestType.method;

  @override
  Future<String> get path async => requestType.urlPath;

  @override
  dynamic get data => body;

  Map<String, String> _defaultHeader() {
    return {};
  }

  @override
  Future<Map<String, String>> get headers async {
    var defaultHeaders = _defaultHeader();

    // var customHeaders = await requestType.customHeaders;
    // defaultHeaders.addAll(requestType.accessTokenHeaders());
    // defaultHeaders.addAll(customHeaders);
    // if (body != null) {
    //   String json = jsonEncode(body);
    //   List<int> bodyBytes = utf8.encode(json);
    //   defaultHeaders[Headers.contentLengthHeader] = '${bodyBytes.length}';
    // }
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
