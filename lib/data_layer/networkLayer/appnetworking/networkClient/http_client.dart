// ignore: file_names

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'app_http_exceptions.dart';

/// A callback that returns a Dio response, presumably from a Dio method
/// it has called which performs an HTTP request, such as `dio.get()`,
/// `dio.post()`, etc.
typedef HttpLibraryMethod<T> = Future<Response<T>> Function();

/// Function which takes a Dio response object and an exception and returns
/// an optional [AppBaseException], optionally mapping the response
/// to a custom exception.
typedef ResponseExceptionMapper = AppNetworkResponseException? Function<T>(
  Response<T>,
  Exception,
);

abstract class IAppHttpClient {
  Future<Response<T>> requestData<T>(
    RequestOptions options,
  );
}

/// Dio HTTP Wrapper with convenient, predictable exception handling.
class AppHttpClient extends IAppHttpClient {
  final IDioClient _client;
  final ResponseExceptionMapper? exceptionMapper;

  /// Create a new App HTTP Client with the specified Dio instance [client]
  /// and an optional [exceptionMapper].
  AppHttpClient({this.exceptionMapper}) : _client = DioClient();

  @override
  Future<Response<T>> requestData<T>(RequestOptions options) {
    return _mapException(() => _client.apiClient.fetch(options));
  }

  // Map Dio exceptions (and any other exceptions) to an exception type
  // supported by our application.
  Future<Response<T>> _mapException<T>(HttpLibraryMethod<T> method) async {
    try {
      final data = await method();
      return data;
    } on DioException catch (exception) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          throw AppNetworkException(
            reason: AppNetworkExceptionReason.canceled,
            exception: exception,
          );
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          throw AppNetworkException(
            reason: AppNetworkExceptionReason.timedOut,
            exception: exception,
          );
        case DioExceptionType.badResponse:
          // For DioErrorType.response, we are guaranteed to have a
          // response object present on the exception.
          final response = exception.response;
          if (response == null || response is! Response<T>) {
            // This should never happen, judging by the current source code
            // for Dio.
            throw AppNetworkResponseException(exception: exception);
          }
          throw exceptionMapper?.call(response, exception) ??
              AppNetworkResponseException(
                exception: exception,
                statusCode: response.statusCode,
                data: response,
              );
        case DioExceptionType.unknown:
        default:
          throw AppNetworkException(
              reason: AppNetworkExceptionReason.other, exception: exception);
      }
    } catch (e) {
      throw AppNetworkException(
        reason: AppNetworkExceptionReason.other,
        exception: e is Exception ? e : Exception('Unknown exception occurred'),
      );
    }
  }
}

abstract class IDioClient {
  Dio get apiClient;
}

class DioClient implements IDioClient {
  static const _defaultConnectTimeout = Duration.millisecondsPerMinute;
  static const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

  late Dio _dio;

  @override
  Dio get apiClient {
    return _dio;
  }

  final List<Interceptor>? interceptors;

  DioClient({
    this.interceptors,
  }) {
    _dio = Dio();
    _dio
      ..options.connectTimeout = const Duration(milliseconds: 1000)
      ..options.receiveTimeout = const Duration(milliseconds: 1000)
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'};

    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: true,
          request: true,
          requestBody: true));
    }
  }
}
