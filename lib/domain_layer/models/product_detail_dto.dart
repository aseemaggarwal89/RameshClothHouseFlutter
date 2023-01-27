// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/domain_layer/models/brand_dto.dart';
import 'package:rameshclothhouse/domain_layer/models/categories_dto.dart';
import 'package:rameshclothhouse/domain_layer/models/review_dto.dart';

part 'product_detail_dto.g.dart';

@JsonSerializable()
class GetProductDetailResponse {
  String status;
  @JsonKey(name: 'data')
  ProductDetailDTO? data;

  GetProductDetailResponse(this.data, this.status);

  factory GetProductDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$GetProductDetailResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetProductDetailResponseToJson(this);
}

enum QuantityType { Meter, Unit }

@JsonSerializable()
class ProductDetailDTO {
  ProductDetailDTO({
    required this.name,
    required this.description,
    required this.price,
    required this.summary,
    required this.uniqueId,
    required this.createdAt,
    this.ratingsAverage,
    this.ratingsQuantity,
    this.discountPrice,
    this.images,
    this.purchaseByCustomerDates,
    this.qualityType,
    this.secretProduct = false,
    this.isStockAvailable = true,
    this.imageCover,
    this.categoryId,
    this.brandId,
    this.subCategoryId,
    this.slug,
    this.discountPercent,
    this.reviews,
    required this.quantity,
  });

  @JsonKey(name: "_id")
  final String uniqueId;
  final num? ratingsAverage;
  final num? ratingsQuantity;
  final num? discountPrice;
  final List<String>? images;
  final String createdAt;
  final List<String>? purchaseByCustomerDates;
  final String? qualityType;
  final String name;
  final num price;
  final String summary;
  final String description;
  final String? imageCover;
  final String? subCategoryId;
  final String? slug;
  final String? discountPercent;
  final bool isStockAvailable;
  final bool secretProduct;
  final CategoriesDTO? categoryId;
  final BrandDTO? brandId;
  List<ProductReviewDTO>? reviews;
  Attributes? sizAttributesId;
  List<String>? sizeNotAllowed;
  final num quantity;

  factory ProductDetailDTO.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailDTOToJson(this);

  QuantityType get productQualityType {
    if (qualityType == 'meter') {
      return QuantityType.Meter;
    } else if (qualityType == 'unit') {
      return QuantityType.Unit;
    }

    return QuantityType.Meter;
  }
}

@JsonSerializable()
class Attributes extends Equatable {
  const Attributes(this.size);

  @JsonKey(name: 'sizes')
  final List<String>? size;

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object?> get props => [size];
}

@JsonSerializable()
class ProductAvailability extends Equatable {
  const ProductAvailability(this.size, this.available);

  @JsonKey(name: 'Size')
  final String? size;
  final bool? available;

  factory ProductAvailability.fromJson(Map<String, dynamic> json) {
    return _$ProductAvailabilityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductAvailabilityToJson(this);

  @override
  List<Object?> get props => [size, available];
}
