import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rameshclothhouse/data_layer/data_source/mapper/network_mapper.dart';
import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/api_contants.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_api_request_type.dart';
import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/networkClient/app_http_exceptions.dart';
import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/networkClient/http_client.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:flutter/foundation.dart';

class AppAPIClient extends INetworkService {
  final IAppHttpClient httpClient;
  Map<AppURLsType, String> appUrls;

  AppAPIClient(this.httpClient, this.appUrls);

  @override
  Future<ApiResult<T>> loadRequest<T>(IHttpRequest request) async {
    try {
      Response response = await _loadRequest(request, httpClient);
      if (response.data == null) {
        return const ApiResult.success(null);
      }

      // final data = Generic.fromJson<T>(response.data);
      // return ApiResult.success(data);
      return parseDataInBackground(response.data);
    } catch (e) {
      return ApiResult.failure(getException(e));
    }
  }

  Future<Response<T>> _loadRequest<T>(
    IHttpRequest request,
    IAppHttpClient httpClient,
  ) async {
    final path = await request.path;
    final params = request.parameters;

    final requestOptions = _setStreamType(
      RequestOptions(
          path: path,
          queryParameters: params,
          baseUrl: appUrls[request.baseUrlType],
          headers: await request.headers,
          data: request.data,
          method: request.method.methodName,
          responseType: request.responseType.dioResponseType),
    );

    return httpClient.requestData(requestOptions);
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  static NetworkExceptions getException(error) {
    NetworkExceptions networkExceptions;
    if (error is AppNetworkException) {
      switch (error.reason) {
        case AppNetworkExceptionReason.timedOut:
          networkExceptions = const NetworkExceptions.timeout();
          break;
        case AppNetworkExceptionReason.canceled:
          networkExceptions = const NetworkExceptions.requestCancelled();
          break;
        case AppNetworkExceptionReason.responseError:
          if (error is AppNetworkResponseException) {
            networkExceptions = NetworkExceptions.handleResponse(
                error.data?.data, error.statusCode);
          } else {
            return const NetworkExceptions.unexpectedError();
          }
          break;
        case AppNetworkExceptionReason.other:
          networkExceptions =
              NetworkExceptions.unhandledException(error.exception);
          break;
      }
    } else if (error is SocketException) {
      networkExceptions = const NetworkExceptions.noInternetConnection();
    } else if (error is NetworkExceptions) {
      networkExceptions = error;
    } else {
      networkExceptions = const NetworkExceptions.unexpectedError();
    }
    return networkExceptions;
  }
}

extension HttpMethodExtensions on HttpMethod {
  String get methodName {
    switch (this) {
      case HttpMethod.patch:
        return "PATCH";
      case HttpMethod.delete:
        return "DELETE";
      case HttpMethod.get:
        return "GET";
      case HttpMethod.post:
        return "POST";
      case HttpMethod.put:
        return "PUT";
    }
  }
}

Future<ApiResult<T>> parseDataInBackground<T>(dynamic jsonData) async {
  try {
    ApiResult<T> result =
        await compute(_parse, jsonData, debugLabel: 'parseDataInBackground');
    return result;
  } catch (e, stacktrace) {
    return ApiResult.failure(
        NetworkExceptions.unhandledException(e as Exception));
  }
}

ApiResult<T> _parse<T>(dynamic jsonData) {
  final data = Generic.fromJson<T>(jsonData);
  return ApiResult.success(data);
}
