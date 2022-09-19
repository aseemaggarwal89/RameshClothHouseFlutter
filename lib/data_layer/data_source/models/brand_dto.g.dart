// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandDTO _$BrandDTOFromJson(Map<String, dynamic> json) => BrandDTO(
      json['active'] as bool,
      json['name'] as String,
      json['_id'] as String,
    );

Map<String, dynamic> _$BrandDTOToJson(BrandDTO instance) => <String, dynamic>{
      'active': instance.active,
      '_id': instance.uniqueId,
      'name': instance.name,
    };
