// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductDetailResponse _$GetProductDetailResponseFromJson(
        Map<String, dynamic> json) =>
    GetProductDetailResponse(
      json['data'] == null
          ? null
          : ProductDetailDTO.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as String,
    );

Map<String, dynamic> _$GetProductDetailResponseToJson(
        GetProductDetailResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

ProductDetailDTO _$ProductDetailDTOFromJson(Map<String, dynamic> json) =>
    ProductDetailDTO(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as num,
      summary: json['summary'] as String,
      uniqueId: json['_id'] as String,
      createdAt: json['createdAt'] as String,
      ratingsAverage: json['ratingsAverage'] as num?,
      ratingsQuantity: json['ratingsQuantity'] as num?,
      discountPrice: json['discountPrice'] as num?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      qualityType: json['qualityType'] as String?,
      isStockAvailable: json['isStockAvailable'] as bool? ?? true,
      imageCover: json['imageCover'] as String?,
      categoryId: json['categoryId'] == null
          ? null
          : CategoriesDTO.fromJson(json['categoryId'] as Map<String, dynamic>),
      brandId: json['brandId'] == null
          ? null
          : BrandDTO.fromJson(json['brandId'] as Map<String, dynamic>),
      subCategoryId: json['subCategoryId'] as String?,
      slug: json['slug'] as String?,
      discountPercent: json['discountPercent'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ProductReviewDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      batches: (json['batch'] as List<dynamic>?)
          ?.map((e) => ProductBatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..sizAttributesId = json['sizAttributesId'] == null
          ? null
          : Attributes.fromJson(json['sizAttributesId'] as Map<String, dynamic>)
      ..sizeNotAllowed = (json['sizeNotAllowed'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();

Map<String, dynamic> _$ProductDetailDTOToJson(ProductDetailDTO instance) =>
    <String, dynamic>{
      '_id': instance.uniqueId,
      'ratingsAverage': instance.ratingsAverage,
      'ratingsQuantity': instance.ratingsQuantity,
      'discountPrice': instance.discountPrice,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'qualityType': instance.qualityType,
      'name': instance.name,
      'price': instance.price,
      'summary': instance.summary,
      'description': instance.description,
      'imageCover': instance.imageCover,
      'subCategoryId': instance.subCategoryId,
      'slug': instance.slug,
      'discountPercent': instance.discountPercent,
      'isStockAvailable': instance.isStockAvailable,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'reviews': instance.reviews,
      'sizAttributesId': instance.sizAttributesId,
      'sizeNotAllowed': instance.sizeNotAllowed,
      'batch': instance.batches,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'sizes': instance.size,
    };

ProductBatch _$ProductBatchFromJson(Map<String, dynamic> json) => ProductBatch(
      json['color'] == null
          ? null
          : ColorInfo.fromJson(json['color'] as Map<String, dynamic>),
      json['product'] as String,
      (json['purchaseByCustomerDates'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      json['quantityUnitType'] as String,
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['isAvailable'] as bool?,
      json['quantity'] as int,
      json['_id'] as String,
    );

Map<String, dynamic> _$ProductBatchToJson(ProductBatch instance) =>
    <String, dynamic>{
      '_id': instance.uniqueId,
      'quantity': instance.quantity,
      'isAvailable': instance.isAvailable,
      'images': instance.images,
      'quantityUnitType': instance.quantityUnitType,
      'purchaseByCustomerDates': instance.purchaseByCustomerDates
          ?.map((e) => e.toIso8601String())
          .toList(),
      'product': instance.product,
      'color': instance.color,
    };

ColorInfo _$ColorInfoFromJson(Map<String, dynamic> json) => ColorInfo(
      json['name'] as String,
      json['colorCode'] as String,
      json['_id'] as String,
    );

Map<String, dynamic> _$ColorInfoToJson(ColorInfo instance) => <String, dynamic>{
      'name': instance.name,
      'colorCode': instance.colorCode,
      '_id': instance.uniqueId,
    };
