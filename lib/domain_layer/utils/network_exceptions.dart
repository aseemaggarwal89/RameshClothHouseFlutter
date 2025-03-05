import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/domain_layer/models/error.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.timeout() = RequestTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError(String reason) =
      InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.unableToDecodeJson(dynamic error) =
      UnableToDecodeJson;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError(dynamic error) =
      UnexpectedError;

  const factory NetworkExceptions.jsonDecodedException(
      dynamic json, Exception e) = JsonDecodedException;

  const factory NetworkExceptions.unhandledException(Exception e) =
      UnhandledException;

  static NetworkExceptions handleResponse(
    dynamic responseData,
    int? statusCode,
  ) {
    ErrorModel? errorModel;

    try {
      errorModel = ErrorModel.fromJson(responseData);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return NetworkExceptions.unauthorizedRequest(
            errorModel?.message ?? "Not authorized to access request");
      case 404:
        return NetworkExceptions.notFound(errorModel?.message ?? "Not found");
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.timeout();
      case 500:
        String errorMessage = errorModel?.message ?? "Unkown server error";
        return NetworkExceptions.internalServerError(errorMessage);
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    switch (networkExceptions) {
      case NotImplemented():
        errorMessage = "Not Implemented";
        break;
      case RequestCancelled():
        errorMessage = "Request Cancelled";
        break;
      case InternalServerError(reason: var reason):
        errorMessage = "Internal Server Error: $reason";
        break;
      case NotFound(reason: var reason):
        errorMessage = reason;
        break;
      case ServiceUnavailable():
        errorMessage = "Service unavailable";
        break;
      case MethodNotAllowed():
        errorMessage = "MethodNotAllowed";
        break;
      case BadRequest():
        errorMessage = "BadRequest";
        break;
      case UnauthorizedRequest(reason: var reason):
        errorMessage = reason;
        break;
      case UnexpectedError(error: var error):
        errorMessage = "Unexpected error occurred $error";
        break;
      case UnhandledException(e: var e):
        errorMessage = "Connection request unknown error";
        if (kDebugMode) {
          print(e);
        }
        break;
      case NoInternetConnection():
        errorMessage = "No internet connection";
        break;
      case Conflict():
        errorMessage = "Error due to a conflict";
        break;
      case RequestTimeout():
        errorMessage = "Timeout in connection with API server";
        break;
      case UnableToProcess():
        errorMessage = "Unable to process the data";
        break;
      case DefaultError(error: var error):
        errorMessage = error;
        break;
      case FormatException():
        errorMessage = "Unexpected error occurred";
        break;
      case NotAcceptable():
        errorMessage = "Not acceptable";
        break;
      case JsonDecodedException():
        errorMessage = "Failure during json decoding";
        break;
      case UnableToDecodeJson():
        errorMessage = "Failure during json decoding";
        break;
      default:
    }

    return errorMessage;
  }
}
