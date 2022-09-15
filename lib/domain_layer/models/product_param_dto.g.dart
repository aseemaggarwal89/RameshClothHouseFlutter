// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_param_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductParamDTO _$ProductParamDTOFromJson(Map<String, dynamic> json) =>
    ProductParamDTO(
      subCategoryId: json['subCategoryId'] as String?,
      brandId: json['brandId'] as String?,
      fields: json['fields'] as String?,
      limit: json['limit'] as String?,
    );

Map<String, dynamic> _$ProductParamDTOToJson(ProductParamDTO instance) =>
    <String, dynamic>{
      'subCategoryId': instance.subCategoryId,
      'brandId': instance.brandId,
      'fields': instance.fields,
      'limit': instance.limit,
    };
