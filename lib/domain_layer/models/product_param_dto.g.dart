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
      pageSize: json['limit'] as String?,
      page: json['page'] as String?,
      sort: json['sort'] as String?,
    );

Map<String, dynamic> _$ProductParamDTOToJson(ProductParamDTO instance) =>
    <String, dynamic>{
      if (instance.subCategoryId case final value?) 'subCategoryId': value,
      if (instance.brandId case final value?) 'brandId': value,
      if (instance.fields case final value?) 'fields': value,
      if (instance.pageSize case final value?) 'limit': value,
      if (instance.page case final value?) 'page': value,
      if (instance.sort case final value?) 'sort': value,
    };
