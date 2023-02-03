// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/domain_layer/models/brand_dto.dart';
import 'package:rameshclothhouse/domain_layer/models/categories_dto.dart';
import 'package:rameshclothhouse/domain_layer/models/review_dto.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

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
    this.qualityType,
    this.isStockAvailable = true,
    this.imageCover,
    this.categoryId,
    this.brandId,
    this.subCategoryId,
    this.slug,
    this.discountPercent,
    this.reviews,
    // required this.quantity,
    this.batches,
  });

  @JsonKey(name: "_id")
  final String uniqueId;
  final num? ratingsAverage;
  final num? ratingsQuantity;
  final num? discountPrice;
  final List<String>? images;
  final String createdAt;
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
  final CategoriesDTO? categoryId;
  final BrandDTO? brandId;
  List<ProductReviewDTO>? reviews;
  Attributes? sizAttributesId;
  List<String>? sizeNotAllowed;
  // final num quantity;

  @JsonKey(name: "batch")
  List<ProductBatch>? batches;

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

  String productDetailName() {
    String productName = name;
    String? subCategory =
        categoryId?.subCategoryFromCategory(subCategoryId ?? "")?.name;

    String brand = brandId != null ? "| ${brandId!.name}" : "";

    return "$productName ${subCategory != null ? "| $subCategory" : ""} $brand";
  }

  String productCurrentPrice() {
    if (discountPrice != null && discountPrice! > 0) {
      return formatAmountWithSymbol(discountPrice);
    } else {
      return formatAmountWithSymbol(price);
    }
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
class ProductBatch extends Equatable {
  const ProductBatch(
    this.color,
    this.product,
    this.purchaseByCustomerDates,
    this.quantityUnitType,
    this.images,
    this.isAvailable,
    this.quantity,
    this.uniqueId,
  );

  @JsonKey(name: "_id")
  final String uniqueId;
  final int quantity;
  final bool? isAvailable;
  final List<String>? images;
  final String quantityUnitType;
  final List<DateTime>? purchaseByCustomerDates;
  final String product;
  final ColorInfo? color;

  factory ProductBatch.fromJson(Map<String, dynamic> json) {
    return _$ProductBatchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductBatchToJson(this);

  @override
  List<Object?> get props => [uniqueId];
}

@JsonSerializable()
class ColorInfo extends Equatable {
  final String name;
  final String colorCode;
  @JsonKey(name: "_id")
  final String uniqueId;

  const ColorInfo(
    this.name,
    this.colorCode,
    this.uniqueId,
  );

  @override
  List<Object?> get props => [uniqueId];

  factory ColorInfo.fromJson(Map<String, dynamic> json) {
    return _$ColorInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ColorInfoToJson(this);
}
