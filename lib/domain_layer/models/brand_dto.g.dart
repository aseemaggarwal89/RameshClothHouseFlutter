// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandDTO _$BrandDTOFromJson(Map<String, dynamic> json) => BrandDTO(
      json['active'] as bool,
      uniqueId: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$BrandDTOToJson(BrandDTO instance) => <String, dynamic>{
      'name': instance.name,
      '_id': instance.uniqueId,
      'active': instance.active,
    };
