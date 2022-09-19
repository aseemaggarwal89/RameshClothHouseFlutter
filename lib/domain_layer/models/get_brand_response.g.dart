// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_brand_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBrandsResponse _$GetBrandsResponseFromJson(Map<String, dynamic> json) =>
    GetBrandsResponse(
      json['results'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => BrandDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
    );

Map<String, dynamic> _$GetBrandsResponseToJson(GetBrandsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
      'data': instance.brands,
    };
