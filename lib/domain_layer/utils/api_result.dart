import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/domain_layer/utils/network_exceptions.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T? data) = Success<T>;
  const factory ApiResult.failure(NetworkExceptions error) = Failure<T>;
}

extension ApiResultExtension<T> on ApiResult<T> {
    TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(NetworkExceptions error) failure,
  }) =>
      throw UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');
}