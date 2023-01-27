import 'package:json_annotation/json_annotation.dart';

import '../domain_layer.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true,)
class BaseResponseDTO<T> {
  String status;
  int results;
  @JsonKey(name: 'data')
  final T? data;
  BaseResponseDTO(
    this.status,
    this.results,
    this.data,
  );
}