// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesDTO _$CategoriesDTOFromJson(Map<String, dynamic> json) =>
    CategoriesDTO(
      json['active'] as bool,
      (json['subCategories'] as List<dynamic>?)
          ?.map((e) => CategoriesDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      uniqueId: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoriesDTOToJson(CategoriesDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      '_id': instance.uniqueId,
      'active': instance.active,
      'subCategories': instance.subCategories,
    };
