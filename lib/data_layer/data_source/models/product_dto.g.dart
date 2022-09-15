// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) => ProductDTO(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      summary: json['summary'] as String,
      uniqueId: json['_id'] as String,
      createdAt: json['createdAt'] as String,
      ratingsAverage: json['ratingsAverage'] as num?,
      ratingsQuantity: json['ratingsQuantity'] as num?,
      discountPrice: json['discountPrice'] as num?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      purchaseByCustomerDates:
          (json['purchaseByCustomerDates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      qualityType: json['qualityType'] as String?,
      imageCover: json['imageCover'] as String?,
      categoryId: json['categoryId'] as String?,
      brandId: json['brandId'] as String?,
      subCategoryId: json['subCategoryId'] as String?,
      slug: json['slug'] as String?,
      discountPercent: json['discountPercent'] as String?,
    );

Map<String, dynamic> _$ProductDTOToJson(ProductDTO instance) =>
    <String, dynamic>{
      '_id': instance.uniqueId,
      'ratingsAverage': instance.ratingsAverage,
      'ratingsQuantity': instance.ratingsQuantity,
      'discountPrice': instance.discountPrice,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'purchaseByCustomerDates': instance.purchaseByCustomerDates,
      'qualityType': instance.qualityType,
      'name': instance.name,
      'price': instance.price,
      'summary': instance.summary,
      'description': instance.description,
      'imageCover': instance.imageCover,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'subCategoryId': instance.subCategoryId,
      'slug': instance.slug,
      'discountPercent': instance.discountPercent,
    };
