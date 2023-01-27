import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain_layer/domain_layer.dart';
import '../../networkLayer/appnetworking/api_contants.dart';

part 'app_api_request_type.freezed.dart';

@freezed
class ApiRequestType with _$ApiRequestType {
  const factory ApiRequestType.product({
    @Default(HttpMethod.get) HttpMethod method,
    @Default(APIRequestNodeType.product) APIRequestNodeType nodeType,
    @Default(AppURLsType.ugc) AppURLsType baseUrlType,
    @Default("") String path,
  }) = _ProductRequest;

  const factory ApiRequestType.brand({
    @Default(HttpMethod.get) HttpMethod method,
    @Default(APIRequestNodeType.brand) APIRequestNodeType nodeType,
    @Default(AppURLsType.ugc) AppURLsType baseUrlType,
    @Default("") String path,
  }) = _BrandRequest;

  const factory ApiRequestType.category({
    @Default(HttpMethod.get) HttpMethod method,
    @Default(APIRequestNodeType.category) APIRequestNodeType nodeType,
    @Default(AppURLsType.ugc) AppURLsType baseUrlType,
    @Default("") String path,
  }) = _CategoryRequest;

  const factory ApiRequestType.auth({
    @Default(HttpMethod.post) HttpMethod method,
    @Default(APIRequestNodeType.auth) APIRequestNodeType nodeType,
    @Default(AppURLsType.ugc) AppURLsType baseUrlType,
    @Default("") String path,
  }) = _AuthRequest;
}

extension ApiRequesstTypeExtension on ApiRequestType {
  Future<String> get urlPath async {
    var urlPath = map(
      product: (_ProductRequest value) => nodeType.nodeUrlEndPoint + path,
      brand: (_BrandRequest value) => nodeType.nodeUrlEndPoint + path,
      category: (_CategoryRequest value) => nodeType.nodeUrlEndPoint + path,
      auth: (_AuthRequest value) => nodeType.nodeUrlEndPoint + path,
    );
    // when(
    //   auth: (HttpMethod method, APIRequestNodeType nodeType,
    //       AppURLsType baseUrlType, String path) {
    //     urlPath = nodeType.nodeUrlEndPoint + path;
    //   },
    //   product: (HttpMethod method, APIRequestNodeType nodeType,
    //       AppURLsType baseUrlType, String path) {
    //     urlPath = nodeType.nodeUrlEndPoint + path;
    //   },
    //   brand: (HttpMethod method, APIRequestNodeType nodeType,
    //       AppURLsType baseUrlType, String path) {
    //     urlPath = nodeType.nodeUrlEndPoint + path;
    //   },
    // );
    return urlPath;
  }

  Future<Map<String, String>> get customHeaders async {
    var customHeaders = <String, String>{};

    when(
      product: (
        HttpMethod method,
        APIRequestNodeType nodeType,
        AppURLsType baseUrlType,
        String path,
      ) {},
      auth: (
        HttpMethod method,
        APIRequestNodeType nodeType,
        AppURLsType baseUrlType,
        String path,
      ) {},
      brand: (
        HttpMethod method,
        APIRequestNodeType nodeType,
        AppURLsType baseUrlType,
        String path,
      ) {},
      category: (
        HttpMethod method,
        APIRequestNodeType nodeType,
        AppURLsType baseUrlType,
        String path,
      ) {},
    );

    return customHeaders;
  }

  Map<String, String> accessTokenHeaders() {
    return {};
  }

  DataResponseType get responseType {
    DataResponseType type = map(
        auth: (_AuthRequest value) => value.nodeType.responseType,
        product: (_ProductRequest value) => value.nodeType.responseType,
        brand: (_BrandRequest value) => value.nodeType.responseType,
        category: (_CategoryRequest value) => value.nodeType.responseType);

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

enum APIRequestNodeType {
  product,
  brand,
  category,
  orders,
  auth,
  userFavorites
}

extension RequestTypeExtension on APIRequestNodeType {
  String get nodeUrlEndPoint {
    switch (this) {
      case APIRequestNodeType.product:
        return '/products';
      case APIRequestNodeType.brand:
        return '/brands';
      case APIRequestNodeType.category:
        return '/categories';
      case APIRequestNodeType.orders:
        return '/orders';
      case APIRequestNodeType.auth:
        return '/users';
      case APIRequestNodeType.userFavorites:
        return '/userFavorites';
    }
  }

  Map<String, String> accessTokenHeaders() {
    switch (this) {
      case APIRequestNodeType.auth:
        return {};
      case APIRequestNodeType.orders:
      case APIRequestNodeType.product:
      case APIRequestNodeType.userFavorites:
      case APIRequestNodeType.brand:
      case APIRequestNodeType.category:
        return {};
    }
  }

  bool get isContentLengthHeaderRequired {
    switch (this) {
      case APIRequestNodeType.orders:
      case APIRequestNodeType.auth:
        return false;
      case APIRequestNodeType.product:
      case APIRequestNodeType.userFavorites:
      case APIRequestNodeType.brand:
      case APIRequestNodeType.category:
        return false;
    }
  }

  DataResponseType get responseType {
    switch (this) {
      case APIRequestNodeType.orders:
      case APIRequestNodeType.auth:
      case APIRequestNodeType.product:
      case APIRequestNodeType.userFavorites:
      case APIRequestNodeType.brand:
      case APIRequestNodeType.category:
        return DataResponseType.json;
    }
  }
}
