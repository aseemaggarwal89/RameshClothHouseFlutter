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
    );

Map<String, dynamic> _$ProductParamDTOToJson(ProductParamDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subCategoryId', instance.subCategoryId);
  writeNotNull('brandId', instance.brandId);
  writeNotNull('fields', instance.fields);
  writeNotNull('limit', instance.pageSize);
  writeNotNull('page', instance.page);
  return val;
}
