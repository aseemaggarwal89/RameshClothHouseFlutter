// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBaseResponseDTO<T> _$GetBaseResponseDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GetBaseResponseDTO<T>(
      status: json['status'] as String,
      results: (json['results'] as num).toInt(),
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$GetBaseResponseDTOToJson<T>(
  GetBaseResponseDTO<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
      'data': instance.data?.map(toJsonT).toList(),
    };

GetDetailBaseResponse<T> _$GetDetailBaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GetDetailBaseResponse<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      status: json['status'] as String,
    );

Map<String, dynamic> _$GetDetailBaseResponseToJson<T>(
  GetDetailBaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
