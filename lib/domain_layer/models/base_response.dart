import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class GetBaseResponseDTO<T> {
  String status;
  int results;
  @JsonKey(name: 'data')
  final List<T>? data;
  GetBaseResponseDTO({
    required this.status,
    required this.results,
    required this.data,
  });

  factory GetBaseResponseDTO.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GetBaseResponseDTOFromJson(json, fromJsonT);

  Map<String, dynamic> toJsonForObject(Object Function(T value) toJsonT) =>
      _$GetBaseResponseDTOToJson(this, toJsonT);
}
