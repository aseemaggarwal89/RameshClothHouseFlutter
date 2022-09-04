import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain_layer/domain_layer.dart';
import 'api_contants.dart';

part 'app_api_request_type.freezed.dart';

@freezed
class ApiRequestType with _$ApiRequestType {
  const factory ApiRequestType.getHomeFeedData(
          {@Default(HttpMethod.post) HttpMethod method,
          @Default("/homeFeed/you") String path,
          @Default(AppURLsType.ugc) AppURLsType baseUrlType,
          @Default(DataResponseType.json) DataResponseType responseType}) =
      _HomeFeedDataRequest;

  const factory ApiRequestType.getProductData(
          {@Default(HttpMethod.post) HttpMethod method,
          @Default('/catalog') String path,
          @Default(AppURLsType.commerce) AppURLsType baseUrlType,
          @Default(DataResponseType.json) DataResponseType responseType}) =
      _ProductDataRequest;

  const factory ApiRequestType.getProfileData(
          {@Default(HttpMethod.get) HttpMethod method,
          @Default('/profileApis/v1/getProfile') String path,
          @Default(AppURLsType.aggregator) AppURLsType baseUrlType,
          @Default(DataResponseType.json) DataResponseType responseType}) =
      _ProfileDataRequest;

  const factory ApiRequestType.getSearchData(
          {@Default(HttpMethod.post) HttpMethod method,
          @Default('/autocomplete/v2') String path,
          @Default(AppURLsType.search) AppURLsType baseUrlType,
          @Default(DataResponseType.json) DataResponseType responseType}) =
      _SearchDataRequest;

  const factory ApiRequestType.getUserContentData(
          {@Default(HttpMethod.post) HttpMethod method,
          @Default('/profileApis/v1/getProfile') String path,
          @Default(AppURLsType.aggregator) AppURLsType baseUrlType,
          @Default(DataResponseType.json) DataResponseType responseType}) =
      _UserContentDataRequest;

  const factory ApiRequestType.getDownloadData(
          {@Default(HttpMethod.get) HttpMethod method,
          required String path,
          @Default(AppURLsType.search) AppURLsType baseUrlType,
          @Default(DataResponseType.bytes) DataResponseType responseType}) =
      _DownloadDataRequest;


  const factory ApiRequestType.getUploadCreateContentData(
          {@Default(HttpMethod.post) HttpMethod method,
          @Default('/createContentV2') String path,
          @Default(AppURLsType.ugc) AppURLsType baseUrlType,
          @Default(DataResponseType.json) DataResponseType responseType}) =
      _UploadCreateContentDataRequest;
}

extension ApiRequesstTypeExtension on ApiRequestType {
  Future<String> get urlPath async {
    var urlPath = '';
    when(
      getHomeFeedData: ((method, path, baseUrlType, response) {
        urlPath = _nodeUrlEndPoint(baseUrlType) + path;
      }),
      getProductData: (method, path, baseUrlType, responseType) {
        urlPath = _nodeUrlEndPoint(baseUrlType) + path;
      },
      getSearchData: (method, path, baseUrlType, responseType) {
        urlPath = _nodeUrlEndPoint(baseUrlType) + path;
      },
      getDownloadData: (method, path, baseUrlType, responseType) {
        urlPath = path;
      },
      getUserContentData: (method, path, baseUrlType, responseType) {
        urlPath = _nodeUrlEndPoint(baseUrlType) + path;
      },
      getUploadCreateContentData: (HttpMethod method, String path,
          AppURLsType baseUrlType, DataResponseType responseType) {
        urlPath = _nodeUrlEndPoint(baseUrlType) + path;
      },
      getProfileData: (method, path, baseUrlType, responseType) {
        urlPath = _nodeUrlEndPoint(baseUrlType) + path;
      },
    );
    return urlPath;
  }

  Future<Map<String, String>> get customHeaders async {
    var customHeaders = <String, String>{};
    when(
      getHomeFeedData: (method, path, baseUrlType, responseType) {},
      getProductData: (method, path, baseUrlType, responseType) {},
      // getCreateOrderData: (method, path, baseUrlType, responseType) {
      //   customHeaders[Headers.contentTypeHeader] = Headers.jsonContentType;
      //   customHeaders['X-User-ID'] = '8223f3ff-332b-4a37-8dd8-ebeecd0c6000';
      //   customHeaders['Accept-Encoding'] = 'gzip';
      // },
      getSearchData: (method, path, baseUrlType, responseType) {},
      getDownloadData: (method, path, baseUrlType, responseType) {},
      getUserContentData: (method, path, baseUrlType, responseType) {
        customHeaders[Headers.contentTypeHeader] = Headers.jsonContentType;
        customHeaders['X-User-ID'] = '57f26049-0e4d-4c48-86be-0372795ec7fa';
        customHeaders['Accept-Encoding'] = 'gzip';
      },
      // getLocalNotificationData: (method, path, baseUrlType, responseType) {},
      // getFeedNotificationData: (HttpMethod method, String path,
      //     AppURLsType baseUrlType, responseType) {},
      getUploadCreateContentData: (HttpMethod method, String path,
          AppURLsType baseUrlType, DataResponseType responseType) {
        customHeaders[Headers.contentTypeHeader] = Headers.jsonContentType;
        customHeaders['X-User-ID'] = '257e3fa4-13a6-4526-bb94-0ae723a28264';
        customHeaders['Accept-Encoding'] = 'gzip';
      },
      getProfileData: (method, path, baseUrlType, responseType) {},
    );

    return customHeaders;
  }

  Map<String, String> accessTokenHeaders() {
    return {};
  }

  String _nodeUrlEndPoint(AppURLsType urlType) {
    switch (urlType) {
      case AppURLsType.commerce:
        return "/commerce";
      case AppURLsType.aggregator:
        return "/_ah/api";
      case AppURLsType.ugc:
        return "/ugc";
      case AppURLsType.feedbuilding:
        return "";
      case AppURLsType.search:
        return "/mall";
      case AppURLsType.download:
        return "";
    }
  }

  ResponseType get responseType {
    ResponseType type = map(
      getHomeFeedData: (data) => data.responseType.dioResponseType,
      getProductData: (data) => data.responseType.dioResponseType,
      getSearchData: (data) => data.responseType.dioResponseType,
      getUserContentData: (data) => data.responseType.dioResponseType,
      getDownloadData: (data) => data.responseType.dioResponseType,
      getUploadCreateContentData: (data) => data.responseType.dioResponseType,
      getProfileData: (data) => data.responseType.dioResponseType,
    );

    return type;
  }
}

extension DataResponseTypeExtension on DataResponseType {
  ResponseType get dioResponseType {
    switch (this) {
      case DataResponseType.json:
        return ResponseType.json;
      case DataResponseType.stream:
        return ResponseType.stream;
      case DataResponseType.plain:
        return ResponseType.plain;
      case DataResponseType.bytes:
        return ResponseType.bytes;
    }
  }
}
