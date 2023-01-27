import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/domain_layer/utils/network_exceptions.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T? data) = Success<T>;
  const factory ApiResult.failure(NetworkExceptions error) = Failure<T>;
}
