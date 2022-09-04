import 'package:dio/dio.dart';

abstract class AppBaseException<OriginalException extends Exception>
    implements Exception {
  /// Create a new application http client exception with the specified
  /// underlying [exception].
  AppBaseException({required this.exception});

  /// Exception which was caught.
  final OriginalException exception;
}

/// Reason for a network exception.
enum AppNetworkExceptionReason {
  /// A timeout error is responsible for the exception.
  timedOut,

  /// When the server response, but with a incorrect status, such as 404, 503...
  responseError,

  canceled,

  /// Default error type, Some other Error. In this case, you can
  other,
}

class AppNetworkException<OriginalException extends Exception>
    extends AppBaseException<OriginalException> {
  /// The reason the network exception ocurred.
  final AppNetworkExceptionReason reason;

  /// Create a network exception.
  AppNetworkException({
    required this.reason,
    required OriginalException exception,
  }) : super(exception: exception);
}

/// Response exception.
class AppNetworkResponseException<OriginalException extends Exception, T>
    extends AppNetworkException<OriginalException> {
  /// Create a new response exception with the specified [statusCode],
  /// original [exception], and response [data].
  AppNetworkResponseException({
    required OriginalException exception,
    this.statusCode,
    this.data,
  }) : super(
          reason: AppNetworkExceptionReason.responseError,
          exception: exception,
        );

  /// Response data, if any.
  final Response<T>? data;

  /// HTTP status code, if any.
  final int? statusCode;

  /// True if the response contains data.
  bool get hasData => data != null;

  /// If the status code is null, returns false. Otherwise, allows the
  /// given closure [evaluator] to validate the given http integer status code.
  ///
  /// Usage:
  /// ```
  /// final isValid = responseException.validateStatusCode(
  ///   (statusCode) => statusCode >= 200 && statusCode < 300,
  /// );
  /// ```
  bool validateStatusCode(bool Function(int statusCode) evaluator) {
    final statusCode = this.statusCode;
    if (statusCode == null) return false;
    return evaluator(statusCode);
  }
}
