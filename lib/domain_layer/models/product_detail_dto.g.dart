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
      purchaseByCustomerDates:
          (json['purchaseByCustomerDates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      qualityType: json['qualityType'] as String?,
      secretProduct: json['secretProduct'] as bool? ?? false,
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
      quantity: json['quantity'] as num,
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
      'purchaseByCustomerDates': instance.purchaseByCustomerDates,
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
      'secretProduct': instance.secretProduct,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'reviews': instance.reviews,
      'sizAttributesId': instance.sizAttributesId,
      'sizeNotAllowed': instance.sizeNotAllowed,
      'quantity': instance.quantity,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'sizes': instance.size,
    };

ProductAvailability _$ProductAvailabilityFromJson(Map<String, dynamic> json) =>
    ProductAvailability(
      json['Size'] as String?,
      json['available'] as bool?,
    );

Map<String, dynamic> _$ProductAvailabilityToJson(
        ProductAvailability instance) =>
    <String, dynamic>{
      'Size': instance.size,
      'available': instance.available,
    };
