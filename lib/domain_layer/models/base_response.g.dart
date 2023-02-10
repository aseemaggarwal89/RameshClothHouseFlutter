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
      results: json['results'] as int,
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
